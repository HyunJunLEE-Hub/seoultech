#!/usr/bin/env python
# coding: utf-8




get_ipython().system('pip install pi-heaan')


# In[1]:


import heaan
params = heaan.Parameters() #동형암호 연산에 필요한 파라미터 객체를 생성한다.
context = heaan.Context(params) # 컨텍스트 객체는 파라미터 저장, 알고리즘의 시간복잡도 계산을 수행한다. 암호문의 부트스트랩을 가능하도록 하는 메소드를 가지고 있다.


# In[2]:


secret_key = heaan.SecretKey(context) # generate secret key


# In[18]:


public_key_path = "./public_key_path"
public_key  = heaan.PublicKeyPack(context, secret_key, public_key_path)
# ConjKey : 암호문을 결합하기 위한 공개 키
# EncKey : 메시지를 암호화하기 위한 공개 키
# MultKey: 암호 텍스트의 곱셈을 위한 공개 키
# RotKey{rot_idx} : {rot_idx} 암호문을 회전하기 위한 공개 키


# In[4]:


# 메시지를 암호화하거나 동형 작업을 평가하는 동안 다음과 같은 공개키가 제공된다.

conj_key = public_key_pack.get_conj_key() # 암호문 결합을 위한 공개키
enc_key = public_key_pack.get_enc_key() # 메세지를 암호화 하기 위한 공개키
mult_key = public_key_pack.get_mult_key() # 암호문 곱셈을 위한 공개키


# In[5]:


#매개 변수 및 비밀키 저장
#매개 변수와  비밀키를 이진 파일로 저장할 수 있다.
param_path = "./params.bin"
params.save(param_path)
secret_key_path = "./secretkey.bin"
secret_key.save(secret_key_path)


# In[6]:


# 저장된 파라미터 로드
param_path = "./params.bin"
params_new = heaan.Parameters()
params_new.load(param_path)
context_new = heaan.Context(params_new)


# In[7]:


# 저장된 비밀키 로드
secret_key_path = "./secretkey.bin"
secret_key_new = heaan.SecretKey()
secret_key_new.load(secret_key_path)


# In[8]:


# 저장된 공개키 로드/
public_key_path = "./public_key_path"
public_key_pack_new = heaan.PublicKeyPack(context_new)
public_key_pack_new.load(public_key_path)


# In[9]:


# pi-heaan은 블록 단위로 수행되며 최대 2^16 슬롯까지 구성할 수 있다.

message = heaan.Message([0.5, 2.3, 4.9, 10.2, 9.0, 5.2, 3.4, 8.6]) # 슬롯이 8개로 구성된 예시 메세지 리스트로 만들어야 작동이 된다.
print(message)
print(len(message))


# In[19]:


# 암호화하기 위한 파라미터들 불러오기
encryptor = heaan.Encryptor(context)
ciphertext = heaan.Ciphertext() # 암호 객체를 생성 및 저장하고 불러오기 / 메시지를 암호화하여 변수로 사용하기 위해서는 암호화 이전에 암호문으로 사용할 변수의 자료형을 반드시 heaan.Ciphertext로 설정해야 한다.
enc_key = public_key.get_enc_key()
encryptor.encrypt(message, enc_key, ciphertext)


# In[23]:


# ctxt의 슬롯의 길이는 확인할 수 있다.
print(ciphertext.get_number_of_slots())
print(len(message))


# In[20]:


# ctxt 저장
ciphertext_path = "./ciphertext.bin"
ciphertext.save(ciphertext_path)
# ctxt 로드
ciphertext_path = "./ciphertext.bin"
ciphertext_new = heaan.Ciphertext()
ciphertext_new.load(ciphertext_path)


# In[24]:


decryptor = heaan.Decryptor(context)
message_out = heaan.Message()
decryptor.decrypt(ciphertext, secret_key, message_out)


# In[27]:


# 원래 메세지에 비해서 근사되서 출력된다.
print(message)
print(message_out)


# In[28]:


# Operation Usage는 각 작업에 대한 알고리즘의 예상 시간을 제공하므로 알고리즘을 보다 효율적으로 구축할 수 있다.
print(context)


# # Add on ciphertexts

# In[30]:


message1 = heaan.Message([0.5, 2.3, 4.9, 10.2, 9.0, 5.2, 3.4, 8.6])
message2 = heaan.Message([0.5, 2.3, 4.9, 10.2, 9.0, 5.2, 3.4, 8.6])


# In[32]:


# 암호화하기 위한 파라미터들 불러오기
encryptor = heaan.Encryptor(context)
ctxt1 = heaan.Ciphertext() # 암호 객체를 생성 및 저장하고 불러오기 / 메시지를 암호화하여 변수로 사용하기 위해서는 암호화 이전에 암호문으로 사용할 변수의 자료형을 반드시 heaan.Ciphertext로 설정해야 한다.
ctxt2 = heaan.Ciphertext()
enc_key = public_key.get_enc_key()
encryptor.encrypt(message1, enc_key, ctxt1)
encryptor.encrypt(message2, enc_key, ctxt2)


# In[33]:


evaluator = heaan.HomEvaluator(context)
ctxt_add = heaan.Ciphertext()
evaluator.add(ctxt1, ctxt2, ctxt_add)


# In[35]:


print(ctxt_add.get_number_of_slots())


# In[36]:


decryptor = heaan.Decryptor(context)
message_out = heaan.Message()
decryptor.decrypt(ctxt_add, secret_key, message_out)


# In[40]:


#sum_result = [x+y for x,y in zip(message1,message2)]
print(message_out)


# # Multiply on ciphertexts

# In[41]:


# 암호화하기 위한 파라미터들 불러오기
encryptor = heaan.Encryptor(context)
ctxt1 = heaan.Ciphertext() # 암호 객체를 생성 및 저장하고 불러오기 / 메시지를 암호화하여 변수로 사용하기 위해서는 암호화 이전에 암호문으로 사용할 변수의 자료형을 반드시 heaan.Ciphertext로 설정해야 한다.
ctxt2 = heaan.Ciphertext()
enc_key = public_key.get_enc_key()
encryptor.encrypt(message1, enc_key, ctxt1)
encryptor.encrypt(message2, enc_key, ctxt2)


# In[42]:


mult_key = public_key.get_mult_key()
ctxt_mult = heaan.Ciphertext()
evaluator.mult(ctxt1, ctxt2, mult_key, ctxt_mult)


# In[45]:


decryptor = heaan.Decryptor(context)
message_out = heaan.Message()
decryptor.decrypt(ctxt_mult, secret_key, message_out)


# In[46]:


message_out


# # ctxt 와 ptxt의 계산

# In[50]:


message3 = heaan.Message([1.0, 2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0])


# In[51]:


ctxt_msg_add = heaan.Ciphertext()
evaluator.add(ctxt1, message3, ctxt_msg_add)


# In[54]:


decryptor = heaan.Decryptor(context)
message_out_add = heaan.Message()
decryptor.decrypt(ctxt_msg_add, secret_key, message_out_add)


# In[58]:


message_out_add


# In[56]:


mult_const = 3
ctxt_const_mult = heaan.Ciphertext()
evaluator.mult(ctxt1, mult_const, ctxt_const_mult)


# In[57]:


decryptor = heaan.Decryptor(context)
message_out_mult = heaan.Message()
decryptor.decrypt(ctxt_const_mult, secret_key, message_out_mult)


# In[59]:


message_out_mult


# # Rotate ciphertext

# In[71]:


rot_idx = 2
ctxt_left_rot, ctxt_right_rot = heaan.Ciphertext(), heaan.Ciphertext()
evaluator.left_rotate(ctxt1, rot_idx, public_key, ctxt_left_rot)
#evaluator.right_rotate(ctxt1, rot_idx, public_key, ctxt_right_rot)


# # Bootstrap ciphertext

# In[73]:


evaluator.bootstrap(ctxt1, public_key, ctxt1)


# In[ ]:




