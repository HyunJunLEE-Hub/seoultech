#!/usr/bin/env python
# coding: utf-8

# In[55]:


import pandas as pd
import numpy as np
# train_set_6200
train_data_pd = pd.read_csv('train_set_6200.csv', encoding='euc-kr')
train_data =[] 

for index, rows in train_data_pd.iterrows(): 
    my_list1 = [rows.UserName, rows.Contents, rows.Label] 
    train_data.append(my_list1) 

#print(train_data) 
#test_set_6200
test_data_pd = pd.read_csv('test_set_6200.csv', encoding='euc-kr')
test_data =[] 

for index, rows in test_data_pd.iterrows(): 
    my_list2 = [rows.UserName, rows.Contents, rows.Label] 
    test_data.append(my_list2) 

#print(test_data) 


# In[56]:


print(len(train_data))
print(len(train_data[0]))
print(len(test_data))
print(len(test_data[0]))


# In[57]:


my_list2


# In[58]:


from konlpy.tag import Okt
okt = Okt()


# In[59]:


import json
import os
from pprint import pprint
import time
start = time.time()

def tokenize(doc):
    # norm은 정규화, stem은 근어로 표시하기를 나타냄
    return ['/'.join(t) for t in okt.pos(doc, norm=True, stem=True)]

if os.path.isfile('train_5936.json'):
    with open('train_5936.json', encoding = 'utf-8') as f:
        train_docs = json.load(f)
    with open('test_5936.json', encoding = 'utf-8') as f:
        test_docs = json.load(f)
else:
    train_docs = [(tokenize(row[1]), row[2]) for row in train_data]
    test_docs = [(tokenize(row[1]), row[2]) for row in test_data]
    # JSON 파일로 저장
    with open('train_5936.json', 'w', encoding="utf-8") as make_file:
        json.dump(train_docs, make_file, ensure_ascii=False, indent="\t")
    with open('test_5936.json', 'w', encoding="utf-8") as make_file:
        json.dump(test_docs, make_file, ensure_ascii=False, indent="\t")

# 예쁘게(?) 출력하기 위해서 pprint 라이브러리 사용
pprint(train_docs[0])
print("time :", time.time() - start)


# In[60]:


pprint(train_docs[1])


# In[61]:


tokens = [t for d in train_docs for t in d[0]]
print(len(tokens))


# In[62]:


import nltk
text = nltk.Text(tokens, name='NMSC')

# 전체 토큰의 개수
print(len(text.tokens))

# 중복을 제외한 토큰의 개수
print(len(set(text.tokens)))            

# 출현 빈도가 높은 상위 토큰 10개
pprint(text.vocab().most_common(10))


# In[63]:


import matplotlib.pyplot as plt
from matplotlib import font_manager, rc
get_ipython().run_line_magic('matplotlib', 'inline')

font_fname = 'c:/windows/fonts/gulim.ttc'
font_name = font_manager.FontProperties(fname=font_fname).get_name()
rc('font', family=font_name)

plt.figure(figsize=(20,10))
text.plot(50)


# In[74]:


# 시간이 꽤 걸립니다! 시간을 절약하고 싶으면 most_common의 매개변수를 줄여보세요.
selected_words = [f[0] for f in text.vocab().most_common(11320)]

def term_frequency(doc):
    return [doc.count(word) for word in selected_words]

train_x = [term_frequency(d) for d, _ in train_docs]
test_x = [term_frequency(d) for d, _ in test_docs]
train_y = [c for _, c in train_docs]
test_y = [c for _, c in test_docs]

start = time.time()
print("time :", time.time() - start)


# In[75]:


import numpy as np

x_train = np.asarray(train_x).astype('float32')
x_test = np.asarray(test_x).astype('float32')

y_train = np.asarray(train_y).astype('float32')
y_test = np.asarray(test_y).astype('float32')


# In[76]:


from tensorflow.keras import models
from tensorflow.keras import layers
from tensorflow.keras import optimizers
from tensorflow.keras import losses
from tensorflow.keras import metrics

model = models.Sequential()
model.add(layers.Dense(64, activation='relu', input_shape=(11320,)))
model.add(layers.Dense(64, activation='relu', input_shape=(11320,)))
model.add(layers.Dense(64, activation='relu', input_shape=(11320,)))
model.add(layers.Dense(64, activation='relu'))
model.add(layers.Dense(1, activation='sigmoid'))

model.compile(optimizer=optimizers.RMSprop(lr=0.001),
             loss=losses.binary_crossentropy,
             metrics=[metrics.binary_accuracy])

model.fit(x_train, y_train, epochs=10, batch_size=512)
results = model.evaluate(x_test, y_test)


# In[67]:


results


# In[79]:


def predict_pos_neg(review):
    token = tokenize(review)
    tf = term_frequency(token)
    data = np.expand_dims(np.asarray(tf).astype('float32'), axis=0)
    score = float(model.predict(data))
    if(score > 0.5):
        print("[{}]는 {:.2f}% 확률로 bosu 리뷰".format(review, score * 100))
    else:
        print("[{}]는 {:.2f}% 확률로 jinbo 리뷰".format(review, (1 - score) * 100))


# In[80]:


predict_pos_neg("검찰개혁")
predict_pos_neg("대학생들아. 김성태 딸 부정취업과 나경원 황교안 자녀 의혹은 별로 안 궁금하니?")


# In[81]:


predict_pos_neg("대깨문들 아직도 대가리 덜 꺠졌네")
predict_pos_neg("아니!  이제는 증거인멸까지 하네? 이런 상황에서 장관 욕심을 아직도 버리지 않는다?")
predict_pos_neg("문쩝쩝 문어벙 삶은 소대가리")
predict_pos_neg("진짜 미친 게 빨개이 새끼들 내년총선에 모조리 쳐 도살하자!!")
predict_pos_neg("한번도 경험해보지 못한 나라인가?")
predict_pos_neg("조국이란이름쓰지마라    열받는다  여기는 부정부패 반칙만있는  대한만국")
predict_pos_neg("사시노패스를 중심으로 사이코패스, 소시오패스들 다 모였네...ㅋㅋㅋ")
predict_pos_neg("그래서 특검을해야된다~~")


# In[83]:


data = pd.read_csv('C:/Users/user/Desktop/이데일리.csv', encoding='cp949')
data = data["Contents"]

for x in data:
    predict_pos_neg(x)
    


# In[ ]:





# In[ ]:




