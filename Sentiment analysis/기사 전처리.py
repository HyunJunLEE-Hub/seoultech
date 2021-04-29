#!/usr/bin/env python
# coding: utf-8

# In[47]:


#-*- coding:utf-8 -*-
import pandas as pd
import numpy as np


# In[48]:


chosun1 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선1.csv', encoding = 'utf-8')
chosun2 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선2.csv', encoding = 'utf-8')
chosun3 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선3.csv', encoding = 'utf-8')
chosun4 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선4.csv', encoding = 'utf-8')
chosun5 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선5.csv', encoding = 'utf-8')
chosun6 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선6.csv', encoding = 'utf-8')
chosun7 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선7.csv', encoding = 'utf-8')
chosun8 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선8.csv', encoding = 'utf-8')
chosun9 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선9.csv', encoding = 'utf-8')
chosun10 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선10.csv', encoding = 'utf-8')
chosun11 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선11.csv', encoding = 'utf-8')
chosun12 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\naver_조선3\naver_조선12.csv', encoding = 'utf-8')


# In[49]:

joongang1 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙1.csv', encoding = 'utf-8')
joongang2 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙2.csv', encoding = 'utf-8')
joongang3 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙3.csv', encoding = 'utf-8')
joongang4 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙4.csv', encoding = 'utf-8')
joongang5 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙5.csv', encoding = 'utf-8')
joongang6 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙6.csv', encoding = 'utf-8')
joongang7 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙7.csv', encoding = 'utf-8')
joongang8 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙8.csv', encoding = 'utf-8')
joongang9 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙9.csv', encoding = 'utf-8')
joongang10 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙10.csv', encoding = 'utf-8')
joongang11 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙11.csv', encoding = 'utf-8')
joongang12 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙12.csv', encoding = 'utf-8')
joongang13 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙13.csv', encoding = 'utf-8')
joongang14 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙14.csv', encoding = 'utf-8')
joongang15 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙15.csv', encoding = 'utf-8')
joongang16 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙16.csv', encoding = 'utf-8')
joongang17 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙17.csv', encoding = 'utf-8')
joongang18 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙18.csv', encoding = 'utf-8')
joongang19 = pd.read_csv(r'C:\Users\user\Desktop\unstructed\네이버_중앙soon\naver_중앙19.csv', encoding = 'utf-8')


# In[50]:


kyunghyang1= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향1.csv', encoding = 'utf-8')
kyunghyang2= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향2.csv', encoding = 'utf-8')
kyunghyang3= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향3.csv', encoding = 'utf-8')
kyunghyang4= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향4.csv', encoding = 'utf-8')
kyunghyang5= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향5.csv', encoding = 'utf-8')
kyunghyang6= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향6.csv', encoding = 'utf-8')
kyunghyang7= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향7.csv', encoding = 'utf-8')
kyunghyang8= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향8.csv', encoding = 'utf-8')
kyunghyang9= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향9.csv', encoding = 'utf-8')
kyunghyang10= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향10.csv', encoding = 'utf-8')
kyunghyang11= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향11.csv', encoding = 'utf-8')
kyunghyang12= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향12.csv', encoding = 'utf-8')
kyunghyang13= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향13.csv', encoding = 'utf-8')
kyunghyang14= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향14.csv', encoding = 'utf-8')
kyunghyang15= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향15.csv', encoding = 'utf-8')
kyunghyang16= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향16.csv', encoding = 'utf-8')
kyunghyang17= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_경향17.csv', encoding = 'utf-8')


# In[51]:


hangyeore1= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레1.csv', encoding = 'utf-8')
hangyeore2= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레2.csv', encoding = 'utf-8')
hangyeore3= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레3.csv', encoding = 'utf-8')
hangyeore4= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레4.csv', encoding = 'utf-8')
hangyeore5= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레5.csv', encoding = 'utf-8')
hangyeore6= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레6.csv', encoding = 'utf-8')
hangyeore7= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레7.csv', encoding = 'utf-8')
hangyeore8= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레8.csv', encoding = 'utf-8')
hangyeore9= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레9.csv', encoding = 'utf-8')
hangyeore10= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레10.csv', encoding = 'utf-8')
hangyeore11= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레11.csv', encoding = 'utf-8')
hangyeore12= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레12.csv', encoding = 'utf-8')
hangyeore13= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레13.csv', encoding = 'utf-8')
hangyeore14= pd.read_csv(r'C:\Users\user\Desktop\unstructed\daum.soon\daum_한겨레14.csv', encoding = 'utf-8')


# In[52]:


chosun1_100 = chosun1.sort_values(by='soon', ascending=False).head(100)
chosun1_100 = chosun1_100.drop(chosun1_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun1_100.columns = ['UserName','Contents']

chosun2_100 = chosun2.sort_values(by='soon', ascending=False).head(100)
chosun2_100 = chosun2_100.drop(chosun2_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun2_100.columns = ['UserName','Contents']

chosun3_100 = chosun3.sort_values(by='soon', ascending=False).head(100)
chosun3_100 = chosun3_100.drop(chosun3_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun3_100.columns = ['UserName','Contents']

chosun4_100 = chosun4.sort_values(by='soon', ascending=False).head(100)
chosun4_100 = chosun4_100.drop(chosun4_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun4_100.columns = ['UserName','Contents']

chosun5_100 = chosun5.sort_values(by='soon', ascending=False).head(100)
chosun5_100 = chosun5_100.drop(chosun5_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun5_100.columns = ['UserName','Contents']

chosun6_100 = chosun6.sort_values(by='soon', ascending=False).head(100)
chosun6_100 = chosun6_100.drop(chosun6_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun6_100.columns = ['UserName','Contents']

chosun7_100 = chosun7.sort_values(by='soon', ascending=False).head(100)
chosun7_100 = chosun7_100.drop(chosun7_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun7_100.columns = ['UserName','Contents']

chosun8_100 = chosun8.sort_values(by='soon', ascending=False).head(100)
chosun8_100 = chosun8_100.drop(chosun8_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun8_100.columns = ['UserName','Contents']

chosun9_100 = chosun9.sort_values(by='soon', ascending=False).head(100)
chosun9_100 = chosun9_100.drop(chosun9_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
chosun9_100.columns = ['UserName','Contents']

chosun10_100 = chosun10.sort_values(by='soon', ascending=False).head(100)
chosun10_100 = chosun10_100.drop(chosun10_100.columns[[0, 3, 4, 5]], axis='columns')
chosun10_100.columns = ['UserName','Contents']

chosun11_100 = chosun11.sort_values(by='soon', ascending=False).head(100)
chosun11_100 = chosun11_100.drop(chosun11_100.columns[[0, 3, 4, 5]], axis='columns')
chosun11_100.columns = ['UserName','Contents']

chosun12_100 = chosun12.sort_values(by='soon', ascending=False).head(100)
chosun12_100 = chosun12_100.drop(chosun12_100.columns[[0, 3, 4, 5]], axis='columns')
chosun12_100.columns = ['UserName','Contents']


# In[53]:


joongang1_100 = joongang1.sort_values(by='soon', ascending=False).head(100)
joongang1_100 = joongang1_100.drop(joongang1_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang1_100.columns = ['UserName','Contents']

joongang2_100 = joongang2.sort_values(by='soon', ascending=False).head(100)
joongang2_100 = joongang2_100.drop(joongang2_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang2_100.columns = ['UserName','Contents']

joongang3_100 = joongang3.sort_values(by='soon', ascending=False).head(100)
joongang3_100 = joongang3_100.drop(joongang3_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang3_100.columns = ['UserName','Contents']

joongang4_100 = joongang4.sort_values(by='soon', ascending=False).head(100)
joongang4_100 = joongang4_100.drop(joongang4_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang4_100.columns = ['UserName','Contents']

joongang5_100 = joongang5.sort_values(by='soon', ascending=False).head(100)
joongang5_100 = joongang5_100.drop(joongang5_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang5_100.columns = ['UserName','Contents']

joongang6_100 = joongang6.sort_values(by='soon', ascending=False).head(100)
joongang6_100 = joongang6_100.drop(joongang6_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang6_100.columns = ['UserName','Contents']

joongang7_100 = joongang7.sort_values(by='soon', ascending=False).head(100)
joongang7_100 = joongang7_100.drop(joongang7_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang7_100.columns = ['UserName','Contents']

joongang8_100 = joongang8.sort_values(by='soon', ascending=False).head(100)
joongang8_100 = joongang8_100.drop(joongang8_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang8_100.columns = ['UserName','Contents']

joongang9_100 = joongang9.sort_values(by='soon', ascending=False).head(100)
joongang9_100 = joongang9_100.drop(joongang9_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang9_100.columns = ['UserName','Contents']

joongang10_100 = joongang10.sort_values(by='soon', ascending=False).head(100)
joongang10_100 = joongang10_100.drop(joongang10_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang10_100.columns = ['UserName','Contents']

joongang11_100 = joongang11.sort_values(by='soon', ascending=False).head(100)
joongang11_100 = joongang11_100.drop(joongang11_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang11_100.columns = ['UserName','Contents']

joongang12_100 = joongang12.sort_values(by='soon', ascending=False).head(100)
joongang12_100 = joongang12_100.drop(joongang12_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang12_100.columns = ['UserName','Contents']

joongang13_100 = joongang13.sort_values(by='soon', ascending=False).head(100)
joongang13_100 = joongang13_100.drop(joongang13_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang13_100.columns = ['UserName','Contents']

joongang14_100 = joongang14.sort_values(by='soon', ascending=False).head(100)
joongang14_100 = joongang14_100.drop(joongang14_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang14_100.columns = ['UserName','Contents']

joongang15_100 = joongang15.sort_values(by='soon', ascending=False).head(100)
joongang15_100 = joongang15_100.drop(joongang15_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang15_100.columns = ['UserName','Contents']

joongang16_100 = joongang16.sort_values(by='soon', ascending=False).head(100)
joongang16_100 = joongang16_100.drop(joongang16_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang16_100.columns = ['UserName','Contents']

joongang17_100 = joongang17.sort_values(by='soon', ascending=False).head(100)
joongang17_100 = joongang17_100.drop(joongang17_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang17_100.columns = ['UserName','Contents']

joongang18_100 = joongang18.sort_values(by='soon', ascending=False).head(100)
joongang18_100 = joongang18_100.drop(joongang18_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang18_100.columns = ['UserName','Contents']

joongang19_100 = joongang19.sort_values(by='soon', ascending=False).head(100)
joongang19_100 = joongang19_100.drop(joongang19_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
joongang19_100.columns = ['UserName','Contents']


# In[54]:


kyunghyang1_100 = kyunghyang1.sort_values(by='soon', ascending=False).head(100)
kyunghyang1_100 = kyunghyang1_100.drop(kyunghyang1_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang1_100.columns = ['UserName','Contents']

kyunghyang2_100 = kyunghyang2.sort_values(by='soon', ascending=False).head(100)
kyunghyang2_100 = kyunghyang2_100.drop(kyunghyang2_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang2_100.columns = ['UserName','Contents']

kyunghyang3_100 = kyunghyang3.sort_values(by='soon', ascending=False).head(100)
kyunghyang3_100 = kyunghyang3_100.drop(kyunghyang3_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang3_100.columns = ['UserName','Contents']

kyunghyang4_100 = kyunghyang4.sort_values(by='soon', ascending=False).head(100)
kyunghyang4_100 = kyunghyang4_100.drop(kyunghyang4_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang4_100.columns = ['UserName','Contents']

kyunghyang5_100 = kyunghyang5.sort_values(by='soon', ascending=False).head(100)
kyunghyang5_100 = kyunghyang5_100.drop(kyunghyang5_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang5_100.columns = ['UserName','Contents']

kyunghyang6_100 = kyunghyang6.sort_values(by='soon', ascending=False).head(100)
kyunghyang6_100 = kyunghyang6_100.drop(kyunghyang6_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang6_100.columns = ['UserName','Contents']

kyunghyang7_100 = kyunghyang7.sort_values(by='soon', ascending=False).head(100)
kyunghyang7_100 = kyunghyang7_100.drop(kyunghyang7_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang7_100.columns = ['UserName','Contents']

kyunghyang8_100 = kyunghyang8.sort_values(by='soon', ascending=False).head(100)
kyunghyang8_100 = kyunghyang8_100.drop(kyunghyang8_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang8_100.columns = ['UserName','Contents']

kyunghyang9_100 = kyunghyang9.sort_values(by='soon', ascending=False).head(100)
kyunghyang9_100 = kyunghyang9_100.drop(kyunghyang9_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
kyunghyang9_100.columns = ['UserName','Contents']

kyunghyang10_100 = kyunghyang10.sort_values(by='Pure', ascending=False).head(100)
kyunghyang10_100 = kyunghyang10_100.drop(kyunghyang10_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang10_100.columns = ['UserName','Contents']

kyunghyang11_100 = kyunghyang11.sort_values(by='Pure', ascending=False).head(100)
kyunghyang11_100 = kyunghyang11_100.drop(kyunghyang11_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang11_100.columns = ['UserName','Contents']

kyunghyang12_100 = kyunghyang12.sort_values(by='Pure', ascending=False).head(100)
kyunghyang12_100 = kyunghyang12_100.drop(kyunghyang12_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang12_100.columns = ['UserName','Contents']

kyunghyang13_100 = kyunghyang13.sort_values(by='Pure', ascending=False).head(100)
kyunghyang13_100 = kyunghyang13_100.drop(kyunghyang13_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang13_100.columns = ['UserName','Contents']

kyunghyang14_100 = kyunghyang14.sort_values(by='Pure', ascending=False).head(100)
kyunghyang14_100 = kyunghyang14_100.drop(kyunghyang14_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang14_100.columns = ['UserName','Contents']

kyunghyang15_100 = kyunghyang15.sort_values(by='Pure', ascending=False).head(100)
kyunghyang15_100 = kyunghyang15_100.drop(kyunghyang15_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang15_100.columns = ['UserName','Contents']

kyunghyang16_100 = kyunghyang16.sort_values(by='Pure', ascending=False).head(100)
kyunghyang16_100 = kyunghyang16_100.drop(kyunghyang16_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang16_100.columns = ['UserName','Contents']

kyunghyang17_100 = kyunghyang17.sort_values(by='Pure', ascending=False).head(100)
kyunghyang17_100 = kyunghyang17_100.drop(kyunghyang17_100.columns[[0, 3, 4, 5]], axis='columns')
kyunghyang17_100.columns = ['UserName','Contents']


# In[55]:


hangyeore1_100 = hangyeore1.sort_values(by='soon', ascending=False).head(100)
hangyeore1_100 = hangyeore1_100.drop(hangyeore1_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore1_100.columns = ['UserName','Contents']

hangyeore2_100 = hangyeore2.sort_values(by='soon', ascending=False).head(100)
hangyeore2_100 = hangyeore2_100.drop(hangyeore2_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore2_100.columns = ['UserName','Contents']

hangyeore3_100 = hangyeore3.sort_values(by='soon', ascending=False).head(100)
hangyeore3_100 = hangyeore3_100.drop(hangyeore3_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore3_100.columns = ['UserName','Contents']

hangyeore4_100 = hangyeore4.sort_values(by='soon', ascending=False).head(100)
hangyeore4_100 = hangyeore4_100.drop(hangyeore4_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore4_100.columns = ['UserName','Contents']

hangyeore5_100 = hangyeore5.sort_values(by='soon', ascending=False).head(100)
hangyeore5_100 = hangyeore5_100.drop(hangyeore5_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore5_100.columns = ['UserName','Contents']

hangyeore6_100 = hangyeore6.sort_values(by='soon', ascending=False).head(100)
hangyeore6_100 = hangyeore6_100.drop(hangyeore6_100.columns[[0, 1, 4, 5, 6, 7, 8, 9]], axis='columns')
hangyeore6_100.columns = ['UserName','Contents']

hangyeore7_100 = hangyeore7.sort_values(by='Pure', ascending=False).head(100)
hangyeore7_100 = hangyeore7_100.drop(hangyeore7_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore7_100.columns = ['UserName','Contents']

hangyeore8_100 = hangyeore8.sort_values(by='Pure', ascending=False).head(100)
hangyeore8_100 = hangyeore8_100.drop(hangyeore8_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore8_100.columns = ['UserName','Contents']

hangyeore9_100 = hangyeore9.sort_values(by='Pure', ascending=False).head(100)
hangyeore9_100 = hangyeore9_100.drop(hangyeore9_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore9_100.columns = ['UserName','Contents']

hangyeore10_100 = hangyeore10.sort_values(by='Pure', ascending=False).head(100)
hangyeore10_100 = hangyeore10_100.drop(hangyeore10_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore10_100.columns = ['UserName','Contents']

hangyeore11_100 = hangyeore11.sort_values(by='Pure', ascending=False).head(100)
hangyeore11_100 = hangyeore11_100.drop(hangyeore11_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore11_100.columns = ['UserName','Contents']

hangyeore12_100 = hangyeore12.sort_values(by='Pure', ascending=False).head(100)
hangyeore12_100 = hangyeore12_100.drop(hangyeore12_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore12_100.columns = ['UserName','Contents']

hangyeore13_100 = hangyeore13.sort_values(by='Pure', ascending=False).head(100)
hangyeore13_100 = hangyeore13_100.drop(hangyeore13_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore13_100.columns = ['UserName','Contents']

hangyeore14_100 = hangyeore14.sort_values(by='Pure', ascending=False).head(100)
hangyeore14_100 = hangyeore14_100.drop(hangyeore14_100.columns[[0, 3, 4, 5]], axis='columns')
hangyeore14_100.columns = ['UserName','Contents']


# In[56]:


bosu = pd.concat([chosun1_100,chosun2_100,chosun3_100,chosun4_100,chosun5_100,chosun6_100,chosun7_100,
                 chosun8_100,chosun9_100,chosun10_100,chosun11_100,chosun12_100,joongang1_100,joongang2_100,
                  joongang3_100,joongang4_100,joongang5_100,joongang6_100,joongang7_100,joongang8_100,
                 joongang9_100,joongang10_100,joongang11_100,joongang12_100,joongang13_100,joongang14_100,
                 joongang15_100,joongang16_100,joongang17_100,joongang18_100,joongang19_100],
                 ignore_index = True)
jinbo = pd.concat([kyunghyang1_100,kyunghyang2_100,kyunghyang3_100,kyunghyang4_100,kyunghyang5_100,
                   kyunghyang6_100,kyunghyang7_100,kyunghyang8_100,kyunghyang9_100,kyunghyang10_100,
                   kyunghyang11_100,kyunghyang12_100,kyunghyang12_100,kyunghyang14_100,kyunghyang15_100,
                   kyunghyang16_100,kyunghyang17_100,hangyeore1_100, hangyeore2_100,hangyeore3_100,
                   hangyeore4_100,hangyeore5_100,hangyeore6_100,hangyeore7_100,hangyeore8_100,
                  hangyeore9_100,hangyeore10_100,hangyeore11_100,hangyeore12_100,hangyeore13_100,
                  hangyeore14_100],
                  ignore_index = True)


# In[57]:


bosu["Label"] = 1
jinbo["Label"] = 0


# In[60]:


all_data = pd.concat([bosu, jinbo])
all_data["Contents"] = all_data["Contents"].astype(str)
all_data["Contents"] = [x.replace("\r\n","") for x in all_data["Contents"]]
all_data["Contents"] = [x.replace("<U+11A2>","") for x in all_data["Contents"]]


# In[63]:


all_data


# In[61]:


from sklearn.model_selection import train_test_split
train_set, test_set = train_test_split(all_data, test_size = 0.3)


# In[62]:


train_set.to_csv("train_set_6200.csv", header = True, encoding = 'euc-kr')
test_set.to_csv("test_set_6200.csv", header = True, encoding = 'euc-kr')


# In[ ]:




