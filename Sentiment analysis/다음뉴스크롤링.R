library(dplyr)
########## 다음 댓글 크롤링 # 패키지 확인
source("https://install-github.me/forkonlp/DNH4")
remotes::install_github("forkonlp/DNH4")
library(DNH4)
comments1<-DNH4::getComment("https://news.v.daum.net/v/20191212192452912",limit = 100)
comments1<-as.data.frame(comments1)
DuserName<-comments1$user_displayName
Dcontents <- comments1$content
Dlike <- comments1$likeCount
Ddislike <- comments1$dislikeCount
Dcomments_fin <- data.frame(DuserName,Dcontents,Dlike,Ddislike)
Dcomments_fin<-Dcomments_fin %>% arrange(desc(Dlike)) 
View(Dcomments_fin)

################# 다음 신문사에 맞는 링크를 걸고 그 기사에 있는 댓글 수집
daum_c1<-DNH4::getComment("https://news.v.daum.net/v/20190918145520079",limit = 100)
daum_c1<-as.data.frame(daum_c1)
DuserName_c1<-daum_c1$user_displayName
Dcontents_c1 <- daum_c1$content
Dlike_c1 <- daum_c1$likeCount
Ddislike_c1 <- daum_c1$dislikeCount
daum_c1 <- data.frame(DuserName_c1,Dcontents_c1,Dlike_c1,Ddislike_c1)
daum_c1<- daum_c1%>% arrange(desc(Dlike_c1)) 
View(daum_c1)
write.csv(daum_c1,"?‹¤?Œì¡°ì„ 1.csv",fileEncoding="UTF-8")

daum_c2<-DNH4::getComment("https://news.v.daum.net/v/20190929154056919",limit = 100)
daum_c2<-as.data.frame(daum_c2)
DuserName_c2<-daum_c2$user_displayName
Dcontents_c2 <- daum_c2$content
Dlike_c2 <- daum_c2$likeCount
Ddislike_c2 <- daum_c2$dislikeCount
daum_c2 <- data.frame(DuserName_c2,Dcontents_c2,Dlike_c2,Ddislike_c2)
daum_c2<- daum_c2%>% arrange(desc(Dlike_c2)) 
View(daum_c2)
write.csv(daum_c2,"?‹¤?Œì¡°ì„ 2.csv",fileEncoding="UTF-8")

daum_c3<-DNH4::getComment("https://news.v.daum.net/v/20191009033934435",limit = 100)
daum_c3<-as.data.frame(daum_c3)
DuserName_c3<-daum_c3$user_displayName
Dcontents_c3 <- daum_c3$content
Dlike_c3 <- daum_c3$likeCount
Ddislike_c3 <- daum_c3$dislikeCount
daum_c3 <- data.frame(DuserName_c3,Dcontents_c3,Dlike_c3,Ddislike_c3)
daum_c3<- daum_c3%>% arrange(desc(Dlike_c3)) 
View(daum_c3)
write.csv(daum_c3,"?‹¤?Œì¡°ì„ 3.csv",fileEncoding="UTF-8")

daum_c4<-DNH4::getComment("https://news.v.daum.net/v/20191011030937412",limit = 100)
daum_c4<-as.data.frame(daum_c4)
DuserName_c4<-daum_c4$user_displayName
Dcontents_c4 <- daum_c4$content
Dlike_c4 <- daum_c4$likeCount
Ddislike_c4 <- daum_c4$dislikeCount
daum_c4 <- data.frame(DuserName_c4,Dcontents_c4,Dlike_c4,Ddislike_c4)
daum_c4<- daum_c4%>% arrange(desc(Dlike_c4)) 
View(daum_c4)
write.csv(daum_c4,"?‹¤?Œì¡°ì„ 4.csv",fileEncoding="UTF-8")

daum_c5<-DNH4::getComment("https://news.v.daum.net/v/20191012030256487",limit = 100)
daum_c5<-as.data.frame(daum_c5)
DuserName_c5<-daum_c5$user_displayName
Dcontents_c5 <- daum_c5$content
Dlike_c5 <- daum_c5$likeCount
Ddislike_c5 <- daum_c5$dislikeCount
daum_c5 <- data.frame(DuserName_c5,Dcontents_c5,Dlike_c5,Ddislike_c5)
daum_c5<- daum_c5%>% arrange(desc(Dlike_c5)) 
View(daum_c5)
write.csv(daum_c5,"?‹¤?Œì¡°ì„ 5.csv",fileEncoding="UTF-8")

daum_c6<-DNH4::getComment("https://news.v.daum.net/v/20191012213227065",limit = 100)
daum_c6<-as.data.frame(daum_c6)
DuserName_c6<-daum_c6$user_displayName
Dcontents_c6 <- daum_c6$content
Dlike_c6 <- daum_c6$likeCount
Ddislike_c6 <- daum_c6$dislikeCount
daum_c6 <- data.frame(DuserName_c6,Dcontents_c6,Dlike_c6,Ddislike_c6)
daum_c6<- daum_c6%>% arrange(desc(Dlike_c6)) 
View(daum_c6)
write.csv(daum_c6,"?‹¤?Œì¡°ì„ 6.csv",fileEncoding="UTF-8")


daum_c7<-DNH4::getComment("https://news.v.daum.net/v/20190826014553872",limit = 100)
daum_c7<-as.data.frame(daum_c7)
DuserName_c7<-daum_c7$user_displayName
Dcontents_c7 <- daum_c7$content
Dlike_c7 <- daum_c7$likeCount
Ddislike_c7 <- daum_c7$dislikeCount
daum_c7 <- data.frame(DuserName_c7,Dcontents_c7,Dlike_c7,Ddislike_c7)
daum_c7<- daum_c7%>% arrange(desc(Dlike_c7)) 
View(daum_c7)
write.csv(daum_c7,"?‹¤?Œì¡°ì„ 7.csv",fileEncoding="UTF-8")


daum_c8<-DNH4::getComment("https://news.v.daum.net/v/20190907031221610",limit = 100)
daum_c8<-as.data.frame(daum_c8)
DuserName_c8<-daum_c8$user_displayName
Dcontents_c8 <- daum_c8$content
Dlike_c8 <- daum_c8$likeCount
Ddislike_c8 <- daum_c8$dislikeCount
daum_c8 <- data.frame(DuserName_c8,Dcontents_c8,Dlike_c8,Ddislike_c8)
daum_c8<- daum_c8%>% arrange(desc(Dlike_c8)) 
View(daum_c8)
write.csv(daum_c8,"?‹¤?Œì¡°ì„ 8.csv",fileEncoding="UTF-8")

daum_c9<-DNH4::getComment("https://news.v.daum.net/v/20190910031117192",limit = 100)
daum_c9<-as.data.frame(daum_c9)
DuserName_c9<-daum_c9$user_displayName
Dcontents_c9 <- daum_c9$content
Dlike_c9 <- daum_c9$likeCount
Ddislike_c9 <- daum_c9$dislikeCount
daum_c9 <- data.frame(DuserName_c9,Dcontents_c9,Dlike_c9,Ddislike_c9)
daum_c9<- daum_c9%>% arrange(desc(Dlike_c9)) 
View(daum_c9)
write.csv(daum_c9,"?‹¤?Œì¡°ì„ 9.csv",fileEncoding="UTF-8")

daum_c10<-DNH4::getComment("https://news.v.daum.net/v/20190912161545165",limit = 100)
daum_c10<-as.data.frame(daum_c10)
DuserName_c10<-daum_c10$user_displayName
Dcontents_c10 <- daum_c10$content
Dlike_c10 <- daum_c10$likeCount
Ddislike_c10 <- daum_c10$dislikeCount
daum_c10 <- data.frame(DuserName_c10,Dcontents_c10,Dlike_c10,Ddislike_c10)
daum_c10<- daum_c10%>% arrange(desc(Dlike_c10)) 
View(daum_c10)
write.csv(daum_c10,"?‹¤?Œì¡°ì„ 10.csv",fileEncoding="UTF-8")


daum_c11<-DNH4::getComment("https://news.v.daum.net/v/20190913102352782",limit = 100)
daum_c11<-as.data.frame(daum_c11)
DuserName_c11<-daum_c11$user_displayName
Dcontents_c11 <- daum_c11$content
Dlike_c11 <- daum_c11$likeCount
Ddislike_c11 <- daum_c11$dislikeCount
daum_c11 <- data.frame(DuserName_c11,Dcontents_c11,Dlike_c11,Ddislike_c11)
daum_c11<- daum_c11%>% arrange(desc(Dlike_c11)) 
View(daum_c11)
write.csv(daum_c11,"?‹¤?Œì¡°ì„ 11.csv",fileEncoding="UTF-8")

daum_c12<-DNH4::getComment("https://news.v.daum.net/v/20190913102352782",limit = 100)
daum_c12<-as.data.frame(daum_c12)
DuserName_c12<-daum_c12$user_displayName
Dcontents_c12 <- daum_c12$content
Dlike_c12 <- daum_c12$likeCount
Ddislike_c12 <- daum_c12$dislikeCount
daum_c12 <- data.frame(DuserName_c12,Dcontents_c12,Dlike_c12,Ddislike_c12)
daum_c12<- daum_c12%>% arrange(desc(Dlike_c12)) 
View(daum_c12)
write.csv(daum_c12,"?‹¤?Œì¡°ì„ 12.csv",fileEncoding="UTF-8")

daum_c13<-DNH4::getComment("https://news.v.daum.net/v/20190917161045853",limit = 100)
daum_c13<-as.data.frame(daum_c13)
DuserName_c13<-daum_c13$user_displayName
Dcontents_c13 <- daum_c13$content
Dlike_c13 <- daum_c13$likeCount
Ddislike_c13 <- daum_c13$dislikeCount
daum_c13 <- data.frame(DuserName_c13,Dcontents_c13,Dlike_c13,Ddislike_c13)
daum_c13<- daum_c13%>% arrange(desc(Dlike_c13)) 
View(daum_c13)
write.csv(daum_c13,"?‹¤?Œì¡°ì„ 13.csv",fileEncoding="UTF-8")

################# ?‹¤?Œ ì¤‘ì•™?¼ë³?
daum_j1<-DNH4::getComment("https://news.v.daum.net/v/20190924050115298",limit = 100)
daum_j1<-as.data.frame(daum_j1)
DuserName_j1<-daum_j1$user_displayName
Dcontents_j1 <- daum_j1$content
Dlike_j1 <- daum_j1$likeCount
Ddislike_j1 <- daum_j1$dislikeCount
daum_j1 <- data.frame(DuserName_j1,Dcontents_j1,Dlike_j1,Ddislike_j1)
daum_j1<- daum_j1%>% arrange(desc(Dlike_j1)) 
View(daum_j1)
write.csv(daum_j1,"?‹¤?Œì¤‘ì•™1.csv",fileEncoding="UTF-8")

daum_j2<-DNH4::getComment("https://news.v.daum.net/v/20191016153858706",limit = 100)
daum_j2<-as.data.frame(daum_j2)
DuserName_j2<-daum_j2$user_displayName
Dcontents_j2 <- daum_j2$content
Dlike_j2 <- daum_j2$likeCount
Ddislike_j2 <- daum_j2$dislikeCount
daum_j2 <- data.frame(DuserName_j2,Dcontents_j2,Dlike_j2,Ddislike_j2)
daum_j2 <- daum_j2%>% arrange(desc(Dlike_j2)) 
View(daum_j2)
write.csv(daum_j2,"?‹¤?Œì¤‘ì•™2.csv",fileEncoding="UTF-8")

daum_j3<-DNH4::getComment("https://news.v.daum.net/v/20191017181640438",limit = 100)
daum_j3<-as.data.frame(daum_j3)
DuserName_j3<-daum_j3$user_displayName
Dcontents_j3 <- daum_j3$content
Dlike_j3 <- daum_j3$likeCount
Ddislike_j3 <- daum_j3$dislikeCount
daum_j3 <- data.frame(DuserName_j3,Dcontents_j3,Dlike_j3,Ddislike_j3)
daum_j3 <- daum_j3%>% arrange(desc(Dlike_j3)) 
View(daum_j3)
write.csv(daum_j3,"?‹¤?Œì¤‘ì•™3.csv",fileEncoding="UTF-8")

daum_j4<-DNH4::getComment("https://news.v.daum.net/v/20191024002950955",limit = 100)
daum_j4<-as.data.frame(daum_j4)
DuserName_j4<-daum_j4$user_displayName
Dcontents_j4 <- daum_j4$content
Dlike_j4 <- daum_j4$likeCount
Ddislike_j4 <- daum_j4$dislikeCount
daum_j4 <- data.frame(DuserName_j4,Dcontents_j4,Dlike_j4,Ddislike_j4)
daum_j4 <- daum_j4%>% arrange(desc(Dlike_j4)) 
View(daum_j4)
write.csv(daum_j4,"?‹¤?Œì¤‘ì•™4.csv",fileEncoding="UTF-8")

daum_j5<-DNH4::getComment("https://news.v.daum.net/v/20191026050113536",limit = 100)
daum_j5<-as.data.frame(daum_j5)
DuserName_j5<-daum_j5$user_displayName
Dcontents_j5 <- daum_j5$content
Dlike_j5 <- daum_j5$likeCount
Ddislike_j5 <- daum_j5$dislikeCount
daum_j5 <- data.frame(DuserName_j5,Dcontents_j5,Dlike_j5,Ddislike_j5)
daum_j5 <- daum_j5%>% arrange(desc(Dlike_j5)) 
View(daum_j5)
write.csv(daum_j5,"?‹¤?Œì¤‘ì•™5.csv",fileEncoding="UTF-8")

daum_j6<-DNH4::getComment("https://news.v.daum.net/v/20191105014054208",limit = 100)
daum_j6<-as.data.frame(daum_j6)
DuserName_j6<-daum_j6$user_displayName
Dcontents_j6 <- daum_j6$content
Dlike_j6 <- daum_j6$likeCount
Ddislike_j6 <- daum_j6$dislikeCount
daum_j6 <- data.frame(DuserName_j6,Dcontents_j6,Dlike_j6,Ddislike_j6)
daum_j6 <- daum_j6%>% arrange(desc(Dlike_j6)) 
View(daum_j6)
write.csv(daum_j6,"?‹¤?Œì¤‘ì•™6.csv",fileEncoding="UTF-8")


daum_j7<-DNH4::getComment("https://news.v.daum.net/v/20191114115124990",limit = 100)
daum_j7<-as.data.frame(daum_j7)
DuserName_j7<-daum_j7$user_displayName
Dcontents_j7 <- daum_j7$content
Dlike_j7 <- daum_j7$likeCount
Ddislike_j7 <- daum_j7$dislikeCount
daum_j7 <- data.frame(DuserName_j7,Dcontents_j7,Dlike_j7,Ddislike_j7)
daum_j7 <- daum_j7%>% arrange(desc(Dlike_j7)) 
View(daum_j7)
write.csv(daum_j7,"?‹¤?Œì¤‘ì•™7.csv",fileEncoding="UTF-8")

daum_j8<-DNH4::getComment("https://news.v.daum.net/v/20191120050243847",limit = 100)
daum_j8<-as.data.frame(daum_j8)
DuserName_j8<-daum_j8$user_displayName
Dcontents_j8 <- daum_j8$content
Dlike_j8 <- daum_j8$likeCount
Ddislike_j8 <- daum_j8$dislikeCount
daum_j8 <- data.frame(DuserName_j8,Dcontents_j8,Dlike_j8,Ddislike_j8)
daum_j8 <- daum_j8%>% arrange(desc(Dlike_j8)) 
View(daum_j8)
write.csv(daum_j8,"?‹¤?Œì¤‘ì•™8.csv",fileEncoding="UTF-8")

daum_j9<-DNH4::getComment("https://news.v.daum.net/v/20190821202901511",limit = 100)
daum_j9<-as.data.frame(daum_j9)
DuserName_j9<-daum_j9$user_displayName
Dcontents_j9 <- daum_j9$content
Dlike_j9<-daum_j9$likeCount
Ddislike_j9 <- daum_j9$dislikeCount
daum_j9<- data.frame(DuserName_j9,Dcontents_j9,Dlike_j9,Ddislike_j9)
daum_j9 <- daum_j9%>% arrange(desc(Dlike_j9)) 
View(daum_j9)
write.csv(daum_j9,"?‹¤?Œì¤‘ì•™9.csv",fileEncoding="UTF-8")


daum_j10<-DNH4::getComment("https://news.v.daum.net/v/20190821122324094",limit = 100)
daum_j10<-as.data.frame(daum_j10)
DuserName_j10<-daum_j10$user_displayName
Dcontents_j10 <- daum_j10$content
Dlike_j10 <- daum_j10$likeCount
Ddislike_j10 <- daum_j10$dislikeCount
daum_j10 <- data.frame(DuserName_j10,Dcontents_j10,Dlike_j10,Ddislike_j10)
daum_j10 <- daum_j10%>% arrange(desc(Dlike_j10)) 
View(daum_j10)
write.csv(daum_j10,"?‹¤?Œì¤‘ì•™10.csv",fileEncoding="UTF-8")


daum_j11<-DNH4::getComment("https://news.v.daum.net/v/20190822165648632",limit = 100)
daum_j11<-as.data.frame(daum_j11)
DuserName_j11<-daum_j11$user_displayName
Dcontents_j11 <- daum_j11$content
Dlike_j11 <- daum_j11$likeCount
Ddislike_j11 <- daum_j11$dislikeCount
daum_j11 <- data.frame(DuserName_j11,Dcontents_j11,Dlike_j11,Ddislike_j11)
daum_j11 <- daum_j11%>% arrange(desc(Dlike_j11)) 
View(daum_j11)
write.csv(daum_j11,"?‹¤?Œì¤‘ì•™11.csv",fileEncoding="UTF-8")


daum_j12<-DNH4::getComment("https://news.v.daum.net/v/20190824050137926",limit = 100)
daum_j12<-as.data.frame(daum_j12)
DuserName_j12<-daum_j12$user_displayName
Dcontents_j12 <- daum_j12$content
Dlike_j12 <- daum_j12$likeCount
Ddislike_j12 <- daum_j12$dislikeCount
daum_j12 <- data.frame(DuserName_j12,Dcontents_j12,Dlike_j12,Ddislike_j12)
daum_j12 <- daum_j12%>% arrange(desc(Dlike_j12)) 
View(daum_j12)
write.csv(daum_j12,"?‹¤?Œì¤‘ì•™12.csv",fileEncoding="UTF-8")


daum_j13<-DNH4::getComment("https://news.v.daum.net/v/20190825183816641",limit = 100)
daum_j13<-as.data.frame(daum_j13)
DuserName_j13<-daum_j13$user_displayName
Dcontents_j13 <- daum_j13$content
Dlike_j13 <- daum_j13$likeCount
Ddislike_j13 <- daum_j13$dislikeCount
daum_j13 <- data.frame(DuserName_j13,Dcontents_j13,Dlike_j13,Ddislike_j13)
daum_j13 <- daum_j13%>% arrange(desc(Dlike_j13)) 
View(daum_j13)
write.csv(daum_j13,"?‹¤?Œì¤‘ì•™13.csv",fileEncoding="UTF-8")


daum_j14<-DNH4::getComment("https://news.v.daum.net/v/20190826050111031",limit = 100)
daum_j14<-as.data.frame(daum_j14)
DuserName_j14<-daum_j14$user_displayName
Dcontents_j14 <- daum_j14$content
Dlike_j14 <- daum_j14$likeCount
Ddislike_j14 <- daum_j14$dislikeCount
daum_j14 <- data.frame(DuserName_j14,Dcontents_j14,Dlike_j14,Ddislike_j14)
daum_j14 <- daum_j14%>% arrange(desc(Dlike_j14)) 
View(daum_j14)
write.csv(daum_j14,"?‹¤?Œì¤‘ì•™14.csv",fileEncoding="UTF-8")


daum_j15<-DNH4::getComment("https://news.v.daum.net/v/20190827201340069",limit = 100)
daum_j15<-as.data.frame(daum_j15)
DuserName_j15<-daum_j15$user_displayName
Dcontents_j15 <- daum_j15$content
Dlike_j15 <- daum_j15$likeCount
Ddislike_j15 <- daum_j15$dislikeCount
daum_j15 <- data.frame(DuserName_j15,Dcontents_j15,Dlike_j15,Ddislike_j15)
daum_j15 <- daum_j15%>% arrange(desc(Dlike_j15)) 
View(daum_j15)
write.csv(daum_j15,"?‹¤?Œì¤‘ì•™15.csv",fileEncoding="UTF-8")


daum_j16<-DNH4::getComment("https://news.v.daum.net/v/20190827050055762",limit = 100)
daum_j16<-as.data.frame(daum_j16)
DuserName_j16<-daum_j16$user_displayName
Dcontents_j16 <- daum_j16$content
Dlike_j16 <- daum_j16$likeCount
Ddislike_j16 <- daum_j16$dislikeCount
daum_j16 <- data.frame(DuserName_j16,Dcontents_j16,Dlike_j16,Ddislike_j16)
daum_j16 <- daum_j16%>% arrange(desc(Dlike_j16)) 
View(daum_j16)
write.csv(daum_j16,"?‹¤?Œì¤‘ì•™16.csv",fileEncoding="UTF-8")

daum_j17<-DNH4::getComment("https://news.v.daum.net/v/20190902050055614",limit = 100)
daum_j17<-as.data.frame(daum_j17)
DuserName_j17<-daum_j17$user_displayName
Dcontents_j17 <- daum_j17$content
Dlike_j17 <- daum_j17$likeCount
Ddislike_j17 <- daum_j17$dislikeCount
daum_j17 <- data.frame(DuserName_j17,Dcontents_j17,Dlike_j17,Ddislike_j17)
daum_j17 <- daum_j17%>% arrange(desc(Dlike_j17)) 
View(daum_j17)
write.csv(daum_j17,"?‹¤?Œì¤‘ì•™17.csv",fileEncoding="UTF-8")

daum_j18<-DNH4::getComment("https://news.v.daum.net/v/20190904050232953",limit = 100)
daum_j18<-as.data.frame(daum_j18)
DuserName_j18<-daum_j18$user_displayName
Dcontents_j18 <- daum_j18$content
Dlike_j18 <- daum_j18$likeCount
Ddislike_j18 <- daum_j18$dislikeCount
daum_j18 <- data.frame(DuserName_j18,Dcontents_j18,Dlike_j18,Ddislike_j18)
daum_j18 <- daum_j18%>% arrange(desc(Dlike_j18)) 
View(daum_j18)
write.csv(daum_j18,"?‹¤?Œì¤‘ì•™18.csv",fileEncoding="UTF-8")


daum_j19<-DNH4::getComment("https://news.v.daum.net/v/20190904184516345",limit = 100)
daum_j19<-as.data.frame(daum_j19)
DuserName_j19<-daum_j19$user_displayName
Dcontents_j19 <- daum_j19$content
Dlike_j19 <- daum_j19$likeCount
Ddislike_j19 <- daum_j19$dislikeCount
daum_j19 <- data.frame(DuserName_j19,Dcontents_j19,Dlike_j19,Ddislike_j19)
daum_j19 <- daum_j19%>% arrange(desc(Dlike_j19)) 
View(daum_j19)
write.csv(daum_j19,"?‹¤?Œì¤‘ì•™19.csv",fileEncoding="UTF-8")


daum_j20<-DNH4::getComment("https://news.v.daum.net/v/20190905010319726",limit = 100)
daum_j20<-as.data.frame(daum_j20)
DuserName_j20<-daum_j20$user_displayName
Dcontents_j20 <- daum_j20$content
Dlike_j20 <- daum_j20$likeCount
Ddislike_j20 <- daum_j20$dislikeCount
daum_j20 <- data.frame(DuserName_j20,Dcontents_j20,Dlike_j20,Ddislike_j20)
daum_j20 <- daum_j20%>% arrange(desc(Dlike_j20)) 
View(daum_j20)
write.csv(daum_j20,"?‹¤?Œì¤‘ì•™20.csv",fileEncoding="UTF-8")


daum_j21<-DNH4::getComment("https://news.v.daum.net/v/20190906194859283",limit = 100)
daum_j21<-as.data.frame(daum_j21)
DuserName_j21<-daum_j21$user_displayName
Dcontents_j21 <- daum_j21$content
Dlike_j21 <- daum_j21$likeCount
Ddislike_j21 <- daum_j21$dislikeCount
daum_j21 <- data.frame(DuserName_j21,Dcontents_j21,Dlike_j21,Ddislike_j21)
daum_j21 <- daum_j21%>% arrange(desc(Dlike_j21)) 
View(daum_j21)
write.csv(daum_j21,"?‹¤?Œì¤‘ì•™21.csv",fileEncoding="UTF-8")

daum_j22<-DNH4::getComment("https://news.v.daum.net/v/20190907160455125",limit = 100)
daum_j22<-as.data.frame(daum_j22)
DuserName_j22<-daum_j22$user_displayName
Dcontents_j22 <- daum_j22$content
Dlike_j22 <- daum_j22$likeCount
Ddislike_j22 <- daum_j22$dislikeCount
daum_j22 <- data.frame(DuserName_j22,Dcontents_j22,Dlike_j22,Ddislike_j22)
daum_j22 <- daum_j22%>% arrange(desc(Dlike_j22)) 
View(daum_j22)
write.csv(daum_j22,"?‹¤?Œì¤‘ì•™22.csv",fileEncoding="UTF-8")

daum_j23<-DNH4::getComment("https://news.v.daum.net/v/20190911050148755",limit = 100)
daum_j23<-as.data.frame(daum_j23)
DuserName_j23<-daum_j23$user_displayName
Dcontents_j23 <- daum_j23$content
Dlike_j23 <- daum_j23$likeCount
Ddislike_j23 <- daum_j23$dislikeCount
daum_j23 <- data.frame(DuserName_j23,Dcontents_j23,Dlike_j23,Ddislike_j23)
daum_j23 <- daum_j23%>% arrange(desc(Dlike_j23)) 
View(daum_j23)
write.csv(daum_j23,"?‹¤?Œì¤‘ì•™23.csv",fileEncoding="UTF-8")

daum_j24<-DNH4::getComment("https://news.v.daum.net/v/20190914050059653",limit = 100)
daum_j24<-as.data.frame(daum_j24)
DuserName_j24<-daum_j24$user_displayName
Dcontents_j24 <- daum_j24$content
Dlike_j24 <- daum_j24$likeCount
Ddislike_j24<- daum_j24$dislikeCount
daum_j24 <- data.frame(DuserName_j24,Dcontents_j24,Dlike_j24,Ddislike_j24)
daum_j24 <- daum_j24%>% arrange(desc(Dlike_j24)) 
View(daum_j24)
write.csv(daum_j24,"?‹¤?Œì¤‘ì•™24.csv",fileEncoding="UTF-8")

daum_j25<-DNH4::getComment("https://news.v.daum.net/v/20190917050111560",limit = 100)
daum_j25<-as.data.frame(daum_j25)
DuserName_j25<-daum_j25$user_displayName
Dcontents_j25 <- daum_j25$content
Dlike_j25<- daum_j25$likeCount
Ddislike_j25 <- daum_j25$dislikeCount
daum_j25 <- data.frame(DuserName_j25,Dcontents_j25,Dlike_j25,Ddislike_j25)
daum_j25 <- daum_j25%>% arrange(desc(Dlike_j25)) 
View(daum_j25)
write.csv(daum_j25,"?‹¤?Œì¤‘ì•™25.csv",fileEncoding="UTF-8")

################# ?‹¤?Œ ?•œê²¨ë ˆ
daum_han1<-DNH4::getComment("https://news.v.daum.net/v/20190928191602119",limit = 100)
daum_han1<-as.data.frame(daum_han1)
DuserName_han1<-daum_han1$user_displayName
Dcontents_han1 <- daum_han1$content
Dlike_han1<- daum_han1$likeCount
Ddislike_han1 <- daum_han1$dislikeCount
daum_han1 <- data.frame(DuserName_han1,Dcontents_han1,Dlike_han1,Ddislike_han1)
daum_han1 <- daum_han1%>% arrange(desc(Dlike_han1)) 
View(daum_han1)
write.csv(daum_han1,"?‹¤?Œ?•œê²¨ë ˆ1.csv",fileEncoding="UTF-8")

daum_han2<-DNH4::getComment("https://news.v.daum.net/v/20191009211607281",limit = 100)
daum_han2<-as.data.frame(daum_han2)
DuserName_han2<-daum_han2$user_displayName
Dcontents_han2 <- daum_han2$content
Dlike_han2<- daum_han2$likeCount
Ddislike_han2 <- daum_han2$dislikeCount
daum_han2 <- data.frame(DuserName_han2,Dcontents_han2,Dlike_han2,Ddislike_han2)
daum_han2 <- daum_han2%>% arrange(desc(Dlike_han2)) 
View(daum_han2)
write.csv(daum_han2,"?‹¤?Œ?•œê²¨ë ˆ2.csv",fileEncoding="UTF-8")

daum_han3<-DNH4::getComment("https://news.v.daum.net/v/20190818194602012",limit = 100)
daum_han3<-as.data.frame(daum_han3)
DuserName_han3<-daum_han3$user_displayName
Dcontents_han3 <- daum_han3$content
Dlike_han3<- daum_han3$likeCount
Ddislike_han3 <- daum_han3$dislikeCount
daum_han3 <- data.frame(DuserName_han3,Dcontents_han3,Dlike_han3,Ddislike_han3)
daum_han3 <- daum_han3%>% arrange(desc(Dlike_han3)) 
View(daum_han3)
write.csv(daum_han3,"?‹¤?Œ?•œê²¨ë ˆ3.csv",fileEncoding="UTF-8")

daum_han4<-DNH4::getComment("https://news.v.daum.net/v/20190819060609330",limit = 100)
daum_han4<-as.data.frame(daum_han4)
DuserName_han4<-daum_han4$user_displayName
Dcontents_han4 <- daum_han4$content
Dlike_han4<- daum_han4$likeCount
Ddislike_han4 <- daum_han4$dislikeCount
daum_han4 <- data.frame(DuserName_han4,Dcontents_han4,Dlike_han4,Ddislike_han4)
daum_han4 <- daum_han4%>% arrange(desc(Dlike_han4)) 
View(daum_han4)
write.csv(daum_han4,"?‹¤?Œ?•œê²¨ë ˆ4.csv",fileEncoding="UTF-8")


daum_han5<-DNH4::getComment("https://news.v.daum.net/v/20190830112606580",limit = 100)
daum_han5<-as.data.frame(daum_han5)
DuserName_han5<-daum_han5$user_displayName
Dcontents_han5 <- daum_han5$content
Dlike_han5<- daum_han5$likeCount
Ddislike_han5 <- daum_han5$dislikeCount
daum_han5 <- data.frame(DuserName_han5,Dcontents_han5,Dlike_han5,Ddislike_han5)
daum_han5 <- daum_han5 %>% arrange(desc(Dlike_han5)) 
View(daum_han5)
write.csv(daum_han5,"?‹¤?Œ?•œê²¨ë ˆ5.csv",fileEncoding="UTF-8")

daum_han6<-DNH4::getComment("https://news.v.daum.net/v/20190906050605674",limit = 100)
daum_han6<-as.data.frame(daum_han6)
DuserName_han6<-daum_han6$user_displayName
Dcontents_han6 <- daum_han6$content
Dlike_han6<- daum_han6$likeCount
Ddislike_han6 <- daum_han6$dislikeCount
daum_han6 <- data.frame(DuserName_han6,Dcontents_han6,Dlike_han6,Ddislike_han6)
daum_han6 <- daum_han6 %>% arrange(desc(Dlike_han6)) 
View(daum_han6)
write.csv(daum_han6,"?‹¤?Œ?•œê²¨ë ˆ6.csv",fileEncoding="UTF-8")

################# ?‹¤?Œ ê²½í–¥
daum_k1<-DNH4::getComment("https://news.v.daum.net/v/20191012181419026",limit = 100)
daum_k1<-as.data.frame(daum_k1)
DuserName_k1<-daum_k1$user_displayName
Dcontents_k1 <- daum_k1$content
Dlike_k1<- daum_k1$likeCount
Ddislike_k1 <- daum_k1$dislikeCount
daum_k1 <- data.frame(DuserName_k1,Dcontents_k1,Dlike_k1,Ddislike_k1)
daum_k1 <- daum_k1 %>% arrange(desc(Dlike_k1)) 
View(daum_k1)
write.csv(daum_k1,"?‹¤?Œê²½í–¥1.csv",fileEncoding="UTF-8")

daum_k2<-DNH4::getComment("https://news.v.daum.net/v/20191016161418180",limit = 100)
daum_k2<-as.data.frame(daum_k2)
DuserName_k2<-daum_k2$user_displayName
Dcontents_k2 <- daum_k2$content
Dlike_k2<- daum_k2$likeCount
Ddislike_k2 <- daum_k2$dislikeCount
daum_k2 <- data.frame(DuserName_k2,Dcontents_k2,Dlike_k2,Ddislike_k2)
daum_k2 <- daum_k2 %>% arrange(desc(Dlike_k2)) 
View(daum_k2)
write.csv(daum_k2,"?‹¤?Œê²½í–¥2.csv",fileEncoding="UTF-8")

daum_k3<-DNH4::getComment("https://news.v.daum.net/v/20191017060018876",limit = 100)
daum_k3<-as.data.frame(daum_k3)
DuserName_k3<-daum_k3$user_displayName
Dcontents_k3 <- daum_k3$content
Dlike_k3<- daum_k3$likeCount
Ddislike_k3 <- daum_k3$dislikeCount
daum_k3 <- data.frame(DuserName_k3,Dcontents_k3,Dlike_k3,Ddislike_k3)
daum_k3 <- daum_k3 %>% arrange(desc(Dlike_k3)) 
View(daum_k3)
write.csv(daum_k3,"?‹¤?Œê²½í–¥3.csv",fileEncoding="UTF-8")

daum_k4<-DNH4::getComment("https://news.v.daum.net/v/20191026165314942",limit = 100)
daum_k4<-as.data.frame(daum_k4)
DuserName_k4<-daum_k4$user_displayName
Dcontents_k4 <- daum_k4$content
Dlike_k4<- daum_k4$likeCount
Ddislike_k4 <- daum_k4$dislikeCount
daum_k4 <- data.frame(DuserName_k4,Dcontents_k4,Dlike_k4,Ddislike_k4)
daum_k4 <- daum_k4 %>% arrange(desc(Dlike_k4)) 
View(daum_k4)
write.csv(daum_k4,"?‹¤?Œê²½í–¥4.csv",fileEncoding="UTF-8")

daum_k5<-DNH4::getComment("https://news.v.daum.net/v/20191113060238074",limit = 100)
daum_k5<-as.data.frame(daum_k5)
DuserName_k5<-daum_k5$user_displayName
Dcontents_k5 <- daum_k5$content
Dlike_k5<- daum_k5$likeCount
Ddislike_k5 <- daum_k5$dislikeCount
daum_k5<- data.frame(DuserName_k5,Dcontents_k5,Dlike_k5,Ddislike_k5)
daum_k5 <- daum_k5 %>% arrange(desc(Dlike_k5)) 
View(daum_k5)
write.csv(daum_k5,"?‹¤?Œê²½í–¥5.csv",fileEncoding="UTF-8")

daum_k6<-DNH4::getComment("https://news.v.daum.net/v/20190827181432597",limit = 100)
daum_k6<-as.data.frame(daum_k6)
DuserName_k6<-daum_k6$user_displayName
Dcontents_k6 <- daum_k6$content
Dlike_k6<- daum_k6$likeCount
Ddislike_k6 <- daum_k6$dislikeCount
daum_k6<- data.frame(DuserName_k6,Dcontents_k6,Dlike_k6,Ddislike_k6)
daum_k6 <- daum_k6 %>% arrange(desc(Dlike_k6)) 
View(daum_k6)
write.csv(daum_k6,"?‹¤?Œê²½í–¥6.csv",fileEncoding="UTF-8")

daum_k7<-DNH4::getComment("https://news.v.daum.net/v/20190828073229286",limit = 100)
daum_k7<-as.data.frame(daum_k7)
DuserName_k7<-daum_k7$user_displayName
Dcontents_k7 <- daum_k7$content
Dlike_k7<- daum_k7$likeCount
Ddislike_k7 <- daum_k7$dislikeCount
daum_k7<- data.frame(DuserName_k7,Dcontents_k7,Dlike_k7,Ddislike_k7)
daum_k7 <- daum_k7 %>% arrange(desc(Dlike_k7)) 
View(daum_k7)
write.csv(daum_k7,"?‹¤?Œê²½í–¥7.csv",fileEncoding="UTF-8")

daum_k8<-DNH4::getComment("https://news.v.daum.net/v/20190906213331171",limit = 100)
daum_k8<-as.data.frame(daum_k8)
DuserName_k8<-daum_k8$user_displayName
Dcontents_k8 <- daum_k8$content
Dlike_k8<- daum_k8$likeCount
Ddislike_k8 <- daum_k8$dislikeCount
daum_k8<- data.frame(DuserName_k8,Dcontents_k8,Dlike_k8,Ddislike_k8)
daum_k8 <- daum_k8 %>% arrange(desc(Dlike_k8)) 
View(daum_k8)
write.csv(daum_k8,"?‹¤?Œê²½í–¥8.csv",fileEncoding="UTF-8")

daum_k9<-DNH4::getComment("https://news.v.daum.net/v/20190911131108752",limit = 100)
daum_k9<-as.data.frame(daum_k9)
DuserName_k9<-daum_k9$user_displayName
Dcontents_k9 <- daum_k9$content
Dlike_k9<- daum_k9$likeCount
Ddislike_k9 <- daum_k9$dislikeCount
daum_k9<- data.frame(DuserName_k9,Dcontents_k9,Dlike_k9,Ddislike_k9)
daum_k9 <- daum_k9 %>% arrange(desc(Dlike_k9)) 
View(daum_k9)
write.csv(daum_k9,"?‹¤?Œê²½í–¥9.csv",fileEncoding="UTF-8")

######################################ì¶”ê?€ ?¬ë¡¤ë§
daum_c1<-DNH4::getComment("https://news.v.daum.net/v/20190929104603386",limit = 100)
daum_c1<-as.data.frame(daum_c1)
UserName<-daum_c1$user_displayName
Contents <- daum_c1$content
Like <- daum_c1$likeCount
Dislike <- daum_c1$dislikeCount
Pure <- as.double(daum_c1$likeCount)-as.double(daum_c1$dislikeCount)
daum_c1<- data.frame(UserName,Contents,Like,Ddislike,Pure)
daum_hh1<- daum_c1%>% arrange(desc(Dlike_c1)) 
View(daum_hh1)
write.csv(daum_hh1,"?‹¤?Œ?•œê²¨ë ˆ8.csv",fileEncoding="UTF-8")




