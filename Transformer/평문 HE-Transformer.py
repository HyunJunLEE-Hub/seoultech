
import pandas as pd
import numpy as np
import math

# 소프트맥스 함수


def softmax(a):
    C = np.max(a)
    exp_a = np.exp(a - C)
    if a.ndim == 1:
        sum_exp_a = np.sum(exp_a)
        y = exp_a / sum_exp_a
    else:
        sum_exp_a = np.sum(exp_a, 1)
        sum_exp_a = sum_exp_a.reshape(sum_exp_a.shape[0], 1)
        y = exp_a / sum_exp_a
    return y

# 멀티헤드 어텐션 블록


def MHA(tok_embedding, weight_q, weight_k, weight_v, bias_q, bias_k, bias_v, weight_o, bias_o):
    # 파이토치에서 학습한 가중치여서 전치후에 내적
    weight_q = weight_q.transpose()
    weight_k = weight_k.transpose()
    weight_v = weight_v.transpose()

    dotq = tok_embedding.dot(weight_q.to_numpy())
    dotk = tok_embedding.dot(weight_k.to_numpy())
    dotv = tok_embedding.dot(weight_v.to_numpy())

    for x in range(0, len(tok_embedding)):
        dotq.iloc[x] = dotq.iloc[x] + bias_q['0']
        dotk.iloc[x] = dotk.iloc[x] + bias_k['0']
        dotv.iloc[x] = dotv.iloc[x] + bias_v['0']

    # head 개수만큼 나누어서 진행 / 필요한건 head가 2인 경우뿐이라 2로 지정한 코드
    dotq_li = []
    dotk_li = []
    dotv_li = []
    for i in range(2):
        dotq_li.append(dotq.iloc[:, 0+(128*i):128+(128*i)])
        dotk_li.append(dotk.iloc[:, 0+(128*i):128+(128*i)])
        dotv_li.append(dotv.iloc[:, 0+(128*i):128+(128*i)])

    re = []
    for i in range(2):
        tmp_dotq = dotq_li[i]
        tmp_dotk = dotk_li[i].transpose()
        tmp_dotqk = tmp_dotq.dot(tmp_dotk.to_numpy())

        tmp_dotqk_divi = tmp_dotqk / math.sqrt(128)
        re.append(tmp_dotqk_divi)

    for i in range(2):
        for x in range(0, len(re[i])):
            attention = re[i].iloc[x]
            # attention = softmax(attention)
            # Bootstrapping 사용을 위해 0.01을 곱해서 값을 작게 만들어줌
            attention = attention * 0.01
            re[i].iloc[x] = attention

    for i in range(2):
        tmp_dotv = dotv_li[i]
        re[i] = re[i].dot(tmp_dotv.to_numpy())

    concat_result = pd.concat([re[0], re[1]], axis=1)

    weight_o = weight_o.transpose()
    final = concat_result.dot(weight_o.to_numpy())

    for x in range(0, len(tok_embedding)):
        final.iloc[x] = final.iloc[x] + bias_o['0']

    return final

# Add&Norm 블록


def add_norm(before_input, input_, weights_norm, bias_norm):

    # Add
    add_result = before_input.add(input_.to_numpy(), fill_value=0)

    # Norm
    for i in range(add_result.shape[0]):
        average = (
            sum(add_result.iloc[i]) / add_result.shape[1])

        var = (sum(add_result.iloc[i]
                   ** 2) / add_result.shape[1]) - (average**2)  # 제평 평제

        add_result.iloc[i] = (
            add_result.iloc[i] - average) / math.sqrt(var+0.0000000000001)

    for x in range(0, add_result.shape[0]):
        add_result.iloc[x] = add_result.iloc[x].mul(
            weights_norm['0'].to_numpy())

        add_result.iloc[x] = add_result.iloc[x].add(
            bias_norm['0'].to_numpy())

    return add_result

# Feed Forward 블록


def feed_forward(input_, weights_ff1, weights_ff2, bias_ff1, bias_ff2):

    weights_ff1 = weights_ff1.transpose()
    output_ff1 = input_.dot(weights_ff1.to_numpy())

    for x in range(0, len(output_ff1)):
        output_ff1.iloc[x] = output_ff1.iloc[x].add(bias_ff1['0'].to_numpy())

    for x in range(0, len(output_ff1)):

        # 렐루 대신 제곱 함수로 다항식 근사
        # output_ff1.iloc[x] = relu(output_ff1.iloc[x])
        output_ff1.iloc[x] = output_ff1.iloc[x] * 0.1
        output_ff1.iloc[x] = output_ff1.iloc[x] * output_ff1.iloc[x]

    weights_ff2 = weights_ff2.transpose()
    output_ff2 = output_ff1.dot(weights_ff2.to_numpy())

    for x in range(0, len(output_ff2)):
        output_ff2.iloc[x] = output_ff2.iloc[x].add(bias_ff2['0'].to_numpy())

    return output_ff2

# 인코더 디코더 멀티헤드 어텐션 블록


def encodeco_MHA(masked_add_norm, encoder_output, enco_deco_weight_q, enco_deco_weight_k, enco_deco_weight_v,
                 enco_deco_bias_q, enco_deco_bias_k, enco_deco_bias_v, weight_o_encodeco, bias_o_encodeco):

    enco_deco_dotq = masked_add_norm.dot(
        enco_deco_weight_q.transpose().to_numpy())
    enco_deco_dotk = encoder_output.dot(
        enco_deco_weight_k.transpose().to_numpy())
    enco_deco_dotv = encoder_output.dot(
        enco_deco_weight_v.transpose().to_numpy())

    for x in range(0, len(decoder_idx)):

        enco_deco_dotq.iloc[x] = enco_deco_dotq.iloc[x] + enco_deco_bias_q['0']

    for x in range(0, len(idx)):
        enco_deco_dotk.iloc[x] = enco_deco_dotk.iloc[x] + enco_deco_bias_k['0']
        enco_deco_dotv.iloc[x] = enco_deco_dotv.iloc[x] + enco_deco_bias_v['0']

     # head 개수만큼 나누어서 진행 / 필요한건 head가 2인 경우뿐이라 2로 지정한 코드
    dotq_encodeco = []
    dotk_encodeco = []
    dotv_encodeco = []
    for i in range(2):
        dotq_encodeco.append(enco_deco_dotq.iloc[:, 0+(128*i):128+(128*i)])
        dotk_encodeco.append(enco_deco_dotk.iloc[:, 0+(128*i):128+(128*i)])
        dotv_encodeco.append(enco_deco_dotv.iloc[:, 0+(128*i):128+(128*i)])

    re_encodeco = []
    for i in range(2):
        tmp_dotq = dotq_encodeco[i]
        tmp_dotk = dotk_encodeco[i].transpose()

        tmp_dotqk = tmp_dotq.dot(tmp_dotk.to_numpy())
        tmp_dotqk_divi = tmp_dotqk / math.sqrt(128)

        re_encodeco.append(tmp_dotqk_divi)

    for i in range(2):
        for x in range(0, len(re_encodeco[i])):
            attention = re_encodeco[i].iloc[x]
            # attention = softmax(attention)
            attention = attention * 0.01
            # attention = attention * attention
            re_encodeco[i].iloc[x] = attention

    for i in range(2):
        tmp_dotv = dotv_encodeco[i]
        re_encodeco[i] = re_encodeco[i].dot(tmp_dotv.to_numpy())

    x = pd.concat([re_encodeco[0], re_encodeco[1]], axis=1)

    weight_o_encodeco = weight_o_encodeco.transpose()
    encodeco_multihead_attention = x.dot(weight_o_encodeco.to_numpy())

    for x in range(0, len(decoder_idx)):
        encodeco_multihead_attention.iloc[x] = encodeco_multihead_attention.iloc[x] + \
            bias_o_encodeco['0']

    return encodeco_multihead_attention

# Linear 블록


def fc_out(decoder_ff_add_norm, fc_out_weights, fc_bias):
    fc_out_T = fc_out_weights.transpose()
    fc_out______ = decoder_ff_add_norm.dot(fc_out_T.to_numpy())

    # 바이어스 더하기
    for x in range(0, fc_out______.shape[0]):

        fc_out______.iloc[x] = fc_out______.iloc[x].add(
            fc_bias['0'].to_numpy())

    return fc_out______


######################################################하이퍼파라미터##################################################
d_model = 256
head = 2
###################################################################################################################################
data1 = pd.read_csv("./weights'/encoder.tok_embedding.weight.csv")
data1.shape


weight_pos = pd.read_csv("./weights'/encoder.pos_embedding.weight.csv")

# 번역하고자 하는 단어 인덱스
idx = [2, 4, 429, 11, 49, 23, 1388, 266, 4, 348, 227, 57, 5, 3]
# ex) 소스 문장 인덱스: [2, 4, 429, 11, 49, 23, 1388, 266, 4, 348, 227, 57, 5, 3]


# tok_embdeeing scale
tok_embedding = data1.iloc[idx] * math.sqrt(d_model)


# tok_embdeeing에 pos 더하기
for x in range(0, len(idx)):

    tok_embedding.iloc[x] = tok_embedding.iloc[x] + weight_pos.iloc[x]

# Make Q, K, V
weight_q = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_q.weight.csv")
weight_k = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_k.weight.csv")
weight_v = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_v.weight.csv")

bias_q = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_q.bias.csv")
bias_k = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_k.bias.csv")
bias_v = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_v.bias.csv")

weight_o = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_o.weight.csv")

bias_o = pd.read_csv(
    "./weights'/encoder.layers.0.self_attention.fc_o.bias.csv")


final = MHA(tok_embedding, weight_q, weight_k, weight_v,
            bias_q, bias_k, bias_v, weight_o, bias_o)

################################################add&norm###############################################################
weights_norm = pd.read_csv(
    "./weights'/encoder.layers.0.self_attn_layer_norm.weight.csv")

bias_norm = pd.read_csv(
    "./weights'/encoder.layers.0.self_attn_layer_norm.bias.csv")


mha_add_norm = add_norm(tok_embedding, final, weights_norm, bias_norm)

########################################################################################################################

weights_ff1 = pd.read_csv(
    "./weights'/encoder.layers.0.positionwise_feedforward.fc_1.weight.csv")
bias_ff1 = pd.read_csv(
    "./weights'/encoder.layers.0.positionwise_feedforward.fc_1.bias.csv")
weights_ff2 = pd.read_csv(
    "./weights'/encoder.layers.0.positionwise_feedforward.fc_2.weight.csv")
bias_ff2 = pd.read_csv(
    "./weights'/encoder.layers.0.positionwise_feedforward.fc_2.bias.csv")


encoder_ff = feed_forward(mha_add_norm, weights_ff1,
                          weights_ff2, bias_ff1, bias_ff2)

weights__ff_norm = pd.read_csv(
    "./weights'/encoder.layers.0.ff_layer_norm.weight.csv")

bias_ff_norm = pd.read_csv(
    "./weights'/encoder.layers.0.ff_layer_norm.bias.csv")


ff_add_norm = add_norm(mha_add_norm, encoder_ff,
                       weights__ff_norm, bias_ff_norm)
encoder_output = ff_add_norm

# 인코더까지는 확인
######################################################인코더 완료#######################################################
######################################################디코더 시작#######################################################
dec_tok_data = pd.read_csv("./weights'/decoder.tok_embedding.weight.csv")
dec_tok_data.shape

weight_dec_pos = pd.read_csv("./weights'/decoder.pos_embedding.weight.csv")
weight_dec_pos.shape


# 하나하나 씩 넣어가면서 값을 비교해야함
decoder_idx = [2]

# ex) 소스 문장 인덱스: [2, 4, 429, 11, 49, 23, 1388, 266, 4, 348, 227, 57, 5, 3]
# ex) 타겟 문장 인덱스: [2, 8, 327, 10, 120, 692, 4, 0, 27, 6, 1110, 204, 5, 3]

dec_tok_embedding = dec_tok_data.iloc[decoder_idx]


dec_tok_embedding = dec_tok_embedding * math.sqrt(d_model)

# tok_embdeeing에 pos 더하기
for x in range(0, len(decoder_idx)):

    dec_tok_embedding.iloc[x] = dec_tok_embedding.iloc[x] + \
        weight_dec_pos.iloc[x]


weight_q_deco = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_q.weight.csv")
weight_k_deco = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_k.weight.csv")
weight_v_deco = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_v.weight.csv")

bias_q_dec = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_q.bias.csv")
bias_k_dec = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_k.bias.csv")
bias_v_dec = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_v.bias.csv")


weight_o_deco = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_o.weight.csv")
bias_o_deco = pd.read_csv(
    "./weights'/decoder.layers.0.self_attention.fc_o.bias.csv")


masked_MHA = MHA(dec_tok_embedding, weight_q_deco, weight_k_deco, weight_v_deco,
                 bias_q_dec, bias_k_dec, bias_v_dec, weight_o_deco, bias_o_deco)

######################################마스크드 멀티헤드어텐션 add&norm########################################################

# norm
weights_norm_dec = pd.read_csv(
    "./weights'/decoder.layers.0.self_attn_layer_norm.weight.csv")
bias_norm_dec = pd.read_csv(
    "./weights'/decoder.layers.0.self_attn_layer_norm.bias.csv")

masked_add_norm = add_norm(
    dec_tok_embedding, masked_MHA, weights_norm_dec, bias_norm_dec)


# 디코더 마스크드 멀티헤드어텐션 값
masked_add_norm

#############################################디코더 마스크드 멀티헤드 어텐션 끝#################################
############################################## 인코더 디코더 멀티헤드 어텐션###############################
# # #인코더 아웃풋
encoder_output


# 디코더의 마스크드 멀티헤드어텐션 아웃풋
masked_add_norm

enco_deco_weight_q = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_q.weight.csv")
enco_deco_weight_k = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_k.weight.csv")
enco_deco_weight_v = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_v.weight.csv")

enco_deco_bias_q = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_q.bias.csv")
enco_deco_bias_k = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_k.bias.csv")
enco_deco_bias_v = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_v.bias.csv")

weight_o_encodeco = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_o.weight.csv")
bias_o_encodeco = pd.read_csv(
    "./weights'/decoder.layers.0.encoder_attention.fc_o.bias.csv")


encodeco_MHA_output = encodeco_MHA(masked_add_norm, encoder_output, enco_deco_weight_q, enco_deco_weight_k, enco_deco_weight_v,
                                   enco_deco_bias_q, enco_deco_bias_k, enco_deco_bias_v, weight_o_encodeco, bias_o_encodeco)
# ##############################################################################################


weights_norm_encodeco = pd.read_csv(
    "./weights'/decoder.layers.0.enc_attn_layer_norm.weight.csv")
bias_norm_encodeco = pd.read_csv(
    "./weights'/decoder.layers.0.enc_attn_layer_norm.bias.csv")

mha_add_norm = add_norm(masked_add_norm, encodeco_MHA_output,
                        weights_norm_encodeco, bias_norm_encodeco)

mha_add_norm
# #################################################인코더 디코더 MHA 끝####################################################
# #################################################디코더 ff layer#####################################################

encodeco_ff1_weight = pd.read_csv(
    "./weights'/decoder.layers.0.positionwise_feedforward.fc_1.weight.csv")
encodeco_ff1_bias = pd.read_csv(
    "./weights'/decoder.layers.0.positionwise_feedforward.fc_1.bias.csv")


encodeco_ff2_weight = pd.read_csv(
    "./weights'/decoder.layers.0.positionwise_feedforward.fc_2.weight.csv")
encodeco_ff2_bias = pd.read_csv(
    "./weights'/decoder.layers.0.positionwise_feedforward.fc_2.bias.csv")

decoder_ff = feed_forward(mha_add_norm, encodeco_ff1_weight,
                          encodeco_ff2_weight, encodeco_ff1_bias, encodeco_ff2_bias)
# #############################################################################################


encodeco_weights__ff_norm = pd.read_csv(
    "./weights'/decoder.layers.0.ff_layer_norm.weight.csv")
encodeco_bias_ff_norm = pd.read_csv(
    "./weights'/decoder.layers.0.ff_layer_norm.bias.csv")

decoder_ff_add_norm = add_norm(
    mha_add_norm, decoder_ff, encodeco_weights__ff_norm, encodeco_bias_ff_norm)
# ###################################################디코더의 아웃풋#######################################################
# ####################################################linear##############################################################

fc_out_weights = pd.read_csv("./weights/decoder.fc_out.weight.csv")
fc_bias = pd.read_csv("./weights'/decoder.fc_out.bias.csv")


fc_out_output = fc_out(decoder_ff_add_norm, fc_out_weights, fc_bias)


#############################################################################################################

# 번역 결과에 해당하는 인덱스
print(fc_out_output.iloc[len(decoder_idx)-1].idxmax(axis=1, skipna=True))

# 번역 결과에 해당하는 인덱스가 가지고 있는 최대값
print(fc_out_output.iloc[len(decoder_idx)-1].to_numpy().max())
