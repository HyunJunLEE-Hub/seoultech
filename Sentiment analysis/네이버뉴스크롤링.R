install.packages("openxlsx")
library(openxlsx)
library(dplyr)
########## 네이버 댓글 크롤링 # 패키지 확인
install.packages("N2H4")
library(N2H4)
comments <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?m_view=1&includeAllCount=true&mode=LSD&mid=sec&sid1=102&oid=020&aid=0003258081")
comments<-as.data.frame(comments)
userName <- comments$userName
contents <- comments$contents
like <- comments$sympathyCount
dislike <- comments$antipathyCount
comments_fin <- data.frame(userName,contents,like,dislike)
comments_fin<-comments_fin %>% arrange(desc(like)) 
View(comments_fin)
getwd()

#########################네이버 조선일보
naver_cho1 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003474364")
naver_cho1 <- as.data.frame(naver_cho1)
userName1 <- naver_cho1$userName
contents1 <- naver_cho1$contents
like1 <- naver_cho1$sympathyCount
dislike1 <- naver_cho1$antipathyCount
naver_cho1 <- data.frame(userName1,contents1,like1,dislike1)
naver_cho1<-naver_cho1 %>% arrange(desc(like1)) 
View(naver_cho1)
class(naver_cho1)
write.csv(naver_cho1,"네이버조선1.csv",fileEncoding="UTF-8")

naver_cho2 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003476699")
naver_cho2 <- as.data.frame(naver_cho2)
userName2 <- naver_cho2$userName
contents2 <- naver_cho2$contents
like2 <- naver_cho2$sympathyCount
dislike2 <- naver_cho2$antipathyCount
naver_cho2 <- data.frame(userName2,contents2,like2,dislike2)
naver_cho2<-naver_cho2 %>% arrange(desc(like2)) 
View(naver_cho2)
write.csv(naver_cho2,"네이버조선2.csv",fileEncoding="UTF-8")

naver_cho3 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003478779")
naver_cho3 <- as.data.frame(naver_cho3)
userName3 <- naver_cho3$userName
contents3 <- naver_cho3$contents
like3 <- naver_cho3$sympathyCount
dislike3 <- naver_cho3$antipathyCount
naver_cho3 <- data.frame(userName3,contents3,like3,dislike3)
naver_cho3<-naver_cho3 %>% arrange(desc(like3)) 
View(naver_cho3)
write.csv(naver_cho3,"네이버조선3.csv",fileEncoding="UTF-8")

naver_cho4 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003479195")
naver_cho4 <- as.data.frame(naver_cho4)
userName4 <- naver_cho4$userName
contents4 <- naver_cho4$contents
like4 <- naver_cho4$sympathyCount
dislike4 <- naver_cho4$antipathyCount
naver_cho4 <- data.frame(userName4,contents4,like4,dislike4)
naver_cho4<-naver_cho4 %>% arrange(desc(like4)) 
View(naver_cho4)
write.csv(naver_cho4,"네이버조선4.csv",fileEncoding="UTF-8")


naver_cho5 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003479420")
naver_cho5 <- as.data.frame(naver_cho5)
userName5 <- naver_cho5$userName
contents5 <- naver_cho5$contents
like5 <- naver_cho5$sympathyCount
dislike5 <- naver_cho5$antipathyCount
naver_cho5 <- data.frame(userName5,contents5,like5,dislike5)
naver_cho5<-naver_cho5 %>% arrange(desc(like5)) 
View(naver_cho5)
write.csv(naver_cho5,"네이버조선5.csv",fileEncoding="UTF-8")

naver_cho6 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003479556")
naver_cho6 <- as.data.frame(naver_cho6)
userName6 <- naver_cho6$userName
contents6 <- naver_cho6$contents
like6 <- naver_cho6$sympathyCount
dislike6 <- naver_cho6$antipathyCount
naver_cho6 <- data.frame(userName6,contents6,like6,dislike6)
naver_cho6<-naver_cho6 %>% arrange(desc(like6)) 
View(naver_cho6)
write.csv(naver_cho6,"네이버조선6.csv",fileEncoding="UTF-8")

naver_cho7 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=023&aid=0003469388")
naver_cho7 <- as.data.frame(naver_cho7)
userName7 <- naver_cho7$userName
contents7 <- naver_cho7$contents
like7 <- naver_cho7$sympathyCount
dislike7 <- naver_cho7$antipathyCount
naver_cho7 <- data.frame(userName7,contents7,like7,dislike7)
naver_cho7<-naver_cho7 %>% arrange(desc(like7)) 
View(naver_cho7)
write.csv(naver_cho7,"네이버조선7.csv",fileEncoding="UTF-8")

naver_cho8 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003472411")
naver_cho8 <- as.data.frame(naver_cho8)
userName8 <- naver_cho8$userName
contents8 <- naver_cho8$contents
like8 <- naver_cho8$sympathyCount
dislike8 <- naver_cho8$antipathyCount
naver_cho8 <- data.frame(userName8,contents8,like8,dislike8)
naver_cho8<-naver_cho8 %>% arrange(desc(like8)) 
View(naver_cho8)
write.csv(naver_cho8,"네이버조선8.csv",fileEncoding="UTF-8")


naver_cho9 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003472866")
naver_cho9 <- as.data.frame(naver_cho9)
userName9 <- naver_cho9$userName
contents9 <- naver_cho9$contents
like9 <- naver_cho9$sympathyCount
dislike9 <- naver_cho9$antipathyCount
naver_cho9 <- data.frame(userName9,contents9,like9,dislike9)
naver_cho9<-naver_cho9 %>% arrange(desc(like9)) 
View(naver_cho9)
write.csv(naver_cho9,"네이버조선9.csv",fileEncoding="UTF-8")


naver_cho10 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003473443")
naver_cho10 <- as.data.frame(naver_cho10)
userName10 <- naver_cho10$userName
contents10 <- naver_cho10$contents
like10 <- naver_cho10$sympathyCount
dislike10 <- naver_cho10$antipathyCount
naver_cho10 <- data.frame(userName10,contents10,like10,dislike10)
naver_cho10 <-naver_cho10 %>% arrange(desc(like10)) 
View(naver_cho10)
write.csv(naver_cho10,"네이버조선10.csv",fileEncoding="UTF-8")

naver_cho11 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003473475")
naver_cho11 <- as.data.frame(naver_cho11)
userName11 <- naver_cho11$userName
contents11 <- naver_cho11$contents
like11 <- naver_cho11$sympathyCount
dislike11 <- naver_cho11$antipathyCount
naver_cho11 <- data.frame(userName11,contents11,like11,dislike11)
naver_cho11 <-naver_cho11 %>% arrange(desc(like11)) 
View(naver_cho11)
write.csv(naver_cho11,"네이버조선11.csv",fileEncoding="UTF-8")

naver_cho12 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=023&aid=0003474107")
naver_cho12 <- as.data.frame(naver_cho12)
userName12 <- naver_cho12$userName
contents12 <- naver_cho12$contents
like12 <- naver_cho12$sympathyCount
dislike12 <- naver_cho12$antipathyCount
naver_cho12 <- data.frame(userName12,contents12,like12,dislike12)
naver_cho12 <-naver_cho12 %>% arrange(desc(like12)) 
View(naver_cho12)
write.csv(naver_cho12,"네이버조선12.csv",fileEncoding="UTF-8")

#########################네이버 중앙
naver_jung1 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002939386")
naver_jung1 <- as.data.frame(naver_jung1)
userName_j1 <- naver_jung1$userName
contents_j1 <- naver_jung1$contents
like_j1 <- naver_jung1$sympathyCount
dislike_j1 <- naver_jung1$antipathyCount
naver_jung1 <- data.frame(userName_j1,contents_j1,like_j1,dislike_j1)
naver_jung1 <-naver_jung1 %>% arrange(desc(like_j1)) 
View(naver_jung1)
write.csv(naver_jung1,"네이버중앙1.csv",fileEncoding="UTF-8")


naver_jung2 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002945265")
naver_jung2 <- as.data.frame(naver_jung2)
userName_j2 <- naver_jung2$userName
contents_j2 <- naver_jung2$contents
like_j2 <- naver_jung2$sympathyCount
dislike_j2 <- naver_jung2$antipathyCount
naver_jung2 <- data.frame(userName_j2,contents_j2,like_j2,dislike_j2)
naver_jung2 <-naver_jung2 %>% arrange(desc(like_j2)) 
View(naver_jung2)
write.csv(naver_jung2,"네이버중앙2.csv",fileEncoding="UTF-8")

naver_jung3 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=101&oid=025&aid=0002945667")
naver_jung3 <- as.data.frame(naver_jung3)
userName_j3 <- naver_jung3$userName
contents_j3 <- naver_jung3$contents
like_j3 <- naver_jung3$sympathyCount
dislike_j3 <- naver_jung3$antipathyCount
naver_jung3 <- data.frame(userName_j3,contents_j3,like_j3,dislike_j3)
naver_jung3 <-naver_jung3 %>% arrange(desc(like_j3)) 
View(naver_jung3)
write.csv(naver_jung3,"네이버중앙3.csv",fileEncoding="UTF-8")

naver_jung4 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002947269")
naver_jung4 <- as.data.frame(naver_jung4)
userName_j4 <- naver_jung4$userName
contents_j4 <- naver_jung4$contents
like_j4 <- naver_jung4$sympathyCount
dislike_j4 <- naver_jung4$antipathyCount
naver_jung4 <- data.frame(userName_j4,contents_j4,like_j4,dislike_j4)
naver_jung4 <-naver_jung4 %>% arrange(desc(like_j4)) 
View(naver_jung4)
write.csv(naver_jung4,"네이버중앙4.csv",fileEncoding="UTF-8")

naver_jung5 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002947789")
naver_jung5 <- as.data.frame(naver_jung5)
userName_j5 <- naver_jung5$userName
contents_j5 <- naver_jung5$contents
like_j5 <- naver_jung5$sympathyCount
dislike_j5 <- naver_jung5$antipathyCount
naver_jung5 <- data.frame(userName_j5,contents_j5,like_j5,dislike_j5)
naver_jung5 <-naver_jung5 %>% arrange(desc(like_j5)) 
View(naver_jung5)
write.csv(naver_jung5,"네이버중앙5.csv",fileEncoding="UTF-8")

naver_jung6 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002950323")
naver_jung6 <- as.data.frame(naver_jung6)
userName_j6 <- naver_jung6$userName
contents_j6 <- naver_jung6$contents
like_j6 <- naver_jung6$sympathyCount
dislike_j6 <- naver_jung6$antipathyCount
naver_jung6 <- data.frame(userName_j6,contents_j6,like_j6,dislike_j6)
naver_jung6 <-naver_jung6 %>% arrange(desc(like_j6)) 
View(naver_jung6)
write.csv(naver_jung6,"네이버중앙6.csv",fileEncoding="UTF-8")

naver_jung7 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002952743")
naver_jung7 <- as.data.frame(naver_jung7)
userName_j7 <- naver_jung7$userName
contents_j7 <- naver_jung7$contents
like_j7 <- naver_jung7$sympathyCount
dislike_j7 <- naver_jung7$antipathyCount
naver_jung7 <- data.frame(userName_j7,contents_j7,like_j7,dislike_j7)
naver_jung7 <-naver_jung7 %>% arrange(desc(like_j7)) 
View(naver_jung7)
write.csv(naver_jung7,"네이버중앙7.csv",fileEncoding="UTF-8")

naver_jung8 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002954145")
naver_jung8 <- as.data.frame(naver_jung8)
userName_j8 <- naver_jung8$userName
contents_j8 <- naver_jung8$contents
like_j8 <- naver_jung8$sympathyCount
dislike_j8 <- naver_jung8$antipathyCount
naver_jung8 <- data.frame(userName_j8,contents_j8,like_j8,dislike_j8)
naver_jung8 <-naver_jung8 %>% arrange(desc(like_j8)) 
View(naver_jung8)
write.csv(naver_jung8,"네이버중앙8.csv",fileEncoding="UTF-8")

naver_jung9 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002931291")
naver_jung9 <- as.data.frame(naver_jung9)
userName_j9 <- naver_jung9$userName
contents_j9 <- naver_jung9$contents
like_j9 <- naver_jung9$sympathyCount
dislike_j9 <- naver_jung9$antipathyCount
naver_jung9 <- data.frame(userName_j9,contents_j9,like_j9,dislike_j9)
naver_jung9 <-naver_jung9 %>% arrange(desc(like_j9)) 
View(naver_jung9) 
write.csv(naver_jung9,"네이버중앙9.csv",fileEncoding="UTF-8")

naver_jung10 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002931209")
naver_jung10 <- as.data.frame(naver_jung10)
userName_j10 <- naver_jung10$userName
contents_j10 <- naver_jung10$contents
like_j10 <- naver_jung10$sympathyCount
dislike_j10 <- naver_jung10$antipathyCount
naver_jung10 <- data.frame(userName_j10,contents_j10,like_j10,dislike_j10)
naver_jung10 <-naver_jung10 %>% arrange(desc(like_j10)) 
View(naver_jung10)
write.csv(naver_jung10,"네이버중앙10.csv",fileEncoding="UTF-8")

naver_jung11 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002931541")
naver_jung11 <- as.data.frame(naver_jung11)
userName_j11 <- naver_jung11$userName
contents_j11 <- naver_jung11$contents
like_j11 <- naver_jung11$sympathyCount
dislike_j11 <- naver_jung11$antipathyCount
naver_jung11 <- data.frame(userName_j11,contents_j11,like_j11,dislike_j11)
naver_jung11 <-naver_jung11 %>% arrange(desc(like_j11)) 
View(naver_jung11)
write.csv(naver_jung11,"네이버중앙11.csv",fileEncoding="UTF-8")

naver_jung12 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002931899")
naver_jung12 <- as.data.frame(naver_jung12)
userName_j12 <- naver_jung12$userName
contents_j12 <- naver_jung12$contents
like_j12 <- naver_jung12$sympathyCount
dislike_j12 <- naver_jung12$antipathyCount
naver_jung12 <- data.frame(userName_j12,contents_j12,like_j12,dislike_j12)
naver_jung12 <-naver_jung12 %>% arrange(desc(like_j12)) 
View(naver_jung12)
write.csv(naver_jung12,"네이버중앙12.csv",fileEncoding="UTF-8")

naver_jung13 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002932117")
naver_jung13 <- as.data.frame(naver_jung13)
userName_j13 <- naver_jung13$userName
contents_j13 <- naver_jung13$contents
like_j13 <- naver_jung13$sympathyCount
dislike_j13 <- naver_jung13$antipathyCount
naver_jung13 <- data.frame(userName_j13,contents_j13,like_j13,dislike_j13)
naver_jung13 <-naver_jung13 %>% arrange(desc(like_j13)) 
View(naver_jung13)
write.csv(naver_jung13,"네이버중앙13.csv",fileEncoding="UTF-8")


naver_jung14 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002932252")
naver_jung14 <- as.data.frame(naver_jung14)
userName_j14 <- naver_jung14$userName
contents_j14 <- naver_jung14$contents
like_j14 <- naver_jung14$sympathyCount
dislike_j14 <- naver_jung14$antipathyCount
naver_jung14 <- data.frame(userName_j14,contents_j14,like_j14,dislike_j14)
naver_jung14 <-naver_jung14 %>% arrange(desc(like_j14)) 
View(naver_jung14)
write.csv(naver_jung14,"네이버중앙14.csv",fileEncoding="UTF-8")


naver_jung15 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002932754")
naver_jung15 <- as.data.frame(naver_jung15)
userName_j15 <- naver_jung15$userName
contents_j15 <- naver_jung15$contents
like_j15 <- naver_jung15$sympathyCount
dislike_j15 <- naver_jung15$antipathyCount
naver_jung15 <- data.frame(userName_j15,contents_j15,like_j15,dislike_j15)
naver_jung15 <-naver_jung15 %>% arrange(desc(like_j15)) 
View(naver_jung15)
write.csv(naver_jung15,"네이버중앙15.csv",fileEncoding="UTF-8")


naver_jung16 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002932568")
naver_jung16 <- as.data.frame(naver_jung16)
userName_j16 <- naver_jung16$userName
contents_j16 <- naver_jung16$contents
like_j16 <- naver_jung16$sympathyCount
dislike_j16 <- naver_jung16$antipathyCount
naver_jung16 <- data.frame(userName_j16,contents_j16,like_j16,dislike_j16)
naver_jung16 <-naver_jung16 %>% arrange(desc(like_j16)) 
View(naver_jung16)
write.csv(naver_jung16,"네이버중앙16.csv",fileEncoding="UTF-8")


naver_jung17 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002934124")
naver_jung17 <- as.data.frame(naver_jung17)
userName_j17 <- naver_jung17$userName
contents_j17 <- naver_jung17$contents
like_j17 <- naver_jung17$sympathyCount
dislike_j17 <- naver_jung17$antipathyCount
naver_jung17 <- data.frame(userName_j17,contents_j17,like_j17,dislike_j17)
naver_jung17<-naver_jung17 %>% arrange(desc(like_j17)) 
View(naver_jung17)
write.csv(naver_jung17,"네이버중앙17.csv",fileEncoding="UTF-8")

naver_jung18 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002934755")
naver_jung18 <- as.data.frame(naver_jung18)
userName_j18 <- naver_jung18$userName
contents_j18 <- naver_jung18$contents
like_j18 <- naver_jung18$sympathyCount
dislike_j18 <- naver_jung18$antipathyCount
naver_jung18 <- data.frame(userName_j18,contents_j18,like_j18,dislike_j18)
naver_jung18<-naver_jung18 %>% arrange(desc(like_j18)) 
View(naver_jung18)
write.csv(naver_jung18,"네이버중앙18.csv",fileEncoding="UTF-8")


naver_jung19 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002934937")
naver_jung19 <- as.data.frame(naver_jung19)
userName_j19 <- naver_jung19$userName
contents_j19 <- naver_jung19$contents
like_j19 <- naver_jung19$sympathyCount
dislike_j19 <- naver_jung19$antipathyCount
naver_jung19 <- data.frame(userName_j19,contents_j19,like_j19,dislike_j19)
naver_jung19<-naver_jung19 %>% arrange(desc(like_j19)) 
View(naver_jung19)
write.csv(naver_jung19,"네이버중앙19.csv",fileEncoding="UTF-8")


naver_jung20 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002935034")
naver_jung20 <- as.data.frame(naver_jung20)
userName_j20 <- naver_jung20$userName
contents_j20 <- naver_jung20$contents
like_j20 <- naver_jung20$sympathyCount
dislike_j20 <- naver_jung20$antipathyCount
naver_jung20 <- data.frame(userName_j20,contents_j20,like_j20,dislike_j20)
naver_jung20<-naver_jung20 %>% arrange(desc(like_j20)) 
View(naver_jung20)
write.csv(naver_jung20,"네이버중앙20.csv",fileEncoding="UTF-8")

naver_jung21 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=100&oid=025&aid=0002935535")
naver_jung21 <- as.data.frame(naver_jung21)
userName_j21 <- naver_jung21$userName
contents_j21 <- naver_jung21$contents
like_j21 <- naver_jung21$sympathyCount
dislike_j21 <- naver_jung21$antipathyCount
naver_jung21 <- data.frame(userName_j21,contents_j21,like_j21,dislike_j21)
naver_jung21<-naver_jung21 %>% arrange(desc(like_j21)) 
View(naver_jung21)
write.csv(naver_jung21,"네이버중앙21.csv",fileEncoding="UTF-8")

naver_jung22 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002935659")
naver_jung22 <- as.data.frame(naver_jung22)
userName_j22 <- naver_jung22$userName
contents_j22 <- naver_jung22$contents
like_j22 <- naver_jung22$sympathyCount
dislike_j22 <- naver_jung22$antipathyCount
naver_jung22 <- data.frame(userName_j22,contents_j22,like_j22,dislike_j22)
naver_jung22<-naver_jung22 %>% arrange(desc(like_j22)) 
View(naver_jung22)
write.csv(naver_jung22,"네이버중앙22.csv",fileEncoding="UTF-8")


naver_jung23 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002936536")
naver_jung23 <- as.data.frame(naver_jung23)
userName_j23 <- naver_jung23$userName
contents_j23 <- naver_jung23$contents
like_j23 <- naver_jung23$sympathyCount
dislike_j23 <- naver_jung23$antipathyCount
naver_jung23 <- data.frame(userName_j23,contents_j23,like_j23,dislike_j23)
naver_jung23<-naver_jung23 %>% arrange(desc(like_j23)) 
View(naver_jung23)
write.csv(naver_jung23,"네이버중앙23.csv",fileEncoding="UTF-8")

naver_jung24 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002936902")
naver_jung24 <- as.data.frame(naver_jung24)
userName_j24 <- naver_jung24$userName
contents_j24 <- naver_jung24$contents
like_j24 <- naver_jung24$sympathyCount
dislike_j24 <- naver_jung24$antipathyCount
naver_jung24 <- data.frame(userName_j24,contents_j24,like_j24,dislike_j24)
naver_jung24<-naver_jung24 %>% arrange(desc(like_j24)) 
View(naver_jung24)
write.csv(naver_jung24,"네이버중앙24.csv",fileEncoding="UTF-8")


naver_jung25 <- N2H4::getAllComment(turl = "")
naver_jung25 <- as.data.frame(naver_jung25)
userName_j25 <- naver_jung25$userName
contents_j25 <- naver_jung25$contents
like_j25 <- naver_jung25$sympathyCount
dislike_j25 <- naver_jung25$antipathyCount
naver_jung25 <- data.frame(userName_j25,contents_j25,like_j25,dislike_j25)
naver_jung25<-naver_jung25 %>% arrange(desc(like_j25)) 
View(naver_jung25)
write.csv(naver_jung25,"네이버중앙25.csv",fileEncoding="UTF-8")


naver_jung26 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=025&aid=0002937533")
naver_jung26 <- as.data.frame(naver_jung26)
userName_j26 <- naver_jung26$userName
contents_j26 <- naver_jung26$contents
like_j26 <- naver_jung26$sympathyCount
dislike_j26 <- naver_jung26$antipathyCount
naver_jung26 <- data.frame(userName_j26,contents_j26,like_j26,dislike_j26)
naver_jung26<-naver_jung26 %>% arrange(desc(like_j26)) 
View(naver_jung26)
write.csv(naver_jung26,"네이버중앙26.csv",fileEncoding="UTF-8")


#########################네이버 한겨레
naver_han1 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002469533")
naver_han1 <- as.data.frame(naver_han1)
userName_han1 <- naver_han1$userName
contents_han1 <- naver_han1$contents
like_han1 <- naver_han1$sympathyCount
dislike_han1 <- naver_han1$antipathyCount
naver_han1 <- data.frame(userName_han1,contents_han1,like_han1,dislike_han1)
naver_han1<-naver_han1 %>% arrange(desc(like_han1)) 
View(naver_han1)
write.csv(naver_han1,"네이버한겨레1.csv",fileEncoding="UTF-8")


naver_han2 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002470749")
naver_han2 <- as.data.frame(naver_han2)
userName_han2 <- naver_han2$userName
contents_han2 <- naver_han2$contents
like_han2 <- naver_han2$sympathyCount
dislike_han2 <- naver_han2$antipathyCount
naver_han2 <- data.frame(userName_han2,contents_han2,like_han2,dislike_han2)
naver_han2<-naver_han2 %>% arrange(desc(like_han2)) 
View(naver_han2)
write.csv(naver_han2,"네이버한겨레2.csv",fileEncoding="UTF-8")

naver_han3 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002464979")
naver_han3 <- as.data.frame(naver_han3)
userName_han3 <- naver_han3$userName
contents_han3 <- naver_han3$contents
like_han3 <- naver_han3$sympathyCount
dislike_han3 <- naver_han3$antipathyCount
naver_han3 <- data.frame(userName_han3,contents_han3,like_han3,dislike_han3)
naver_han3<-naver_han3 %>% arrange(desc(like_han3)) 
View(naver_han3)
write.csv(naver_han3,"네이버한겨레3.csv",fileEncoding="UTF-8")

naver_han4 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002464999")
naver_han4 <- as.data.frame(naver_han4)
userName_han4 <- naver_han4$userName
contents_han4 <- naver_han4$contents
like_han4 <- naver_han4$sympathyCount
dislike_han4 <- naver_han4$antipathyCount
naver_han4 <- data.frame(userName_han4,contents_han4,like_han4,dislike_han4)
naver_han4<-naver_han4 %>% arrange(desc(like_han4)) 
View(naver_han4)
write.csv(naver_han4,"네이버한겨레4.csv",fileEncoding="UTF-8")

naver_han5 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002466459")
naver_han5 <- as.data.frame(naver_han5)
userName_han5 <- naver_han5$userName
contents_han5 <- naver_han5$contents
like_han5 <- naver_han5$sympathyCount
dislike_han5 <- naver_han5$antipathyCount
naver_han5 <- data.frame(userName_han5,contents_han5,like_han5,dislike_han5)
naver_han5<-naver_han5 %>% arrange(desc(like_han5)) 
View(naver_han5)
write.csv(naver_han5,"네이버한겨레5.csv",fileEncoding="UTF-8")

naver_han6 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=028&aid=0002467248")
naver_han6 <- as.data.frame(naver_han6)
userName_han6 <- naver_han6$userName
contents_han6 <- naver_han6$contents
like_han6 <- naver_han6$sympathyCount
dislike_han6 <- naver_han6$antipathyCount
naver_han6 <- data.frame(userName_han6,contents_han6,like_han6,dislike_han6)
naver_han6<-naver_han6 %>% arrange(desc(like_han6)) 
View(naver_han6)
write.csv(naver_han6,"네이버한겨레6.csv",fileEncoding="UTF-8")

#########################네이버 경향
naver_k1 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002967993")
naver_k1 <- as.data.frame(naver_k1)
userName_k1 <- naver_k1$userName
contents_k1 <- naver_k1$contents
like_k1 <- naver_k1$sympathyCount
dislike_k1 <- naver_k1$antipathyCount
naver_k1 <- data.frame(userName_k1,contents_k1,like_k1,dislike_k1)
naver_k1<-naver_k1 %>% arrange(desc(like_k1)) 
View(naver_k1)
write.csv(naver_k1,"네이버경향1.csv",fileEncoding="UTF-8")

naver_k2 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002968855")
naver_k2 <- as.data.frame(naver_k2)
userName_k2 <- naver_k2$userName
contents_k2 <- naver_k2$contents
like_k2 <- naver_k2$sympathyCount
dislike_k2 <- naver_k2$antipathyCount
naver_k2 <- data.frame(userName_k2,contents_k2,like_k2,dislike_k2)
naver_k2<-naver_k2 %>% arrange(desc(like_k2)) 
View(naver_k2)
write.csv(naver_k2,"네이버경향2.csv",fileEncoding="UTF-8")


naver_k3 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002968995")
naver_k3 <- as.data.frame(naver_k3)
userName_k3 <- naver_k3$userName
contents_k3 <- naver_k3$contents
like_k3 <- naver_k3$sympathyCount
dislike_k3 <- naver_k3$antipathyCount
naver_k3 <- data.frame(userName_k3,contents_k3,like_k3,dislike_k3)
naver_k3<-naver_k3 %>% arrange(desc(like_k3)) 
View(naver_k3)
write.csv(naver_k3,"네이버경향3.csv",fileEncoding="UTF-8")

naver_k4 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002970880")
naver_k4 <- as.data.frame(naver_k4)
userName_k4 <- naver_k4$userName
contents_k4 <- naver_k4$contents
like_k4 <- naver_k4$sympathyCount
dislike_k4 <- naver_k4$antipathyCount
naver_k4 <- data.frame(userName_k4,contents_k4,like_k4,dislike_k4)
naver_k4<-naver_k4 %>% arrange(desc(like_k4)) 
View(naver_k4)
write.csv(naver_k4,"네이버경향4.csv",fileEncoding="UTF-8")

naver_k5 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002974427")
naver_k5 <- as.data.frame(naver_k5)
userName_k5 <- naver_k5$userName
contents_k5 <- naver_k5$contents
like_k5 <- naver_k5$sympathyCount
dislike_k5 <- naver_k5$antipathyCount
naver_k5 <- data.frame(userName_k5,contents_k5,like_k5,dislike_k5)
naver_k5<-naver_k5 %>% arrange(desc(like_k5)) 
View(naver_k5)
write.csv(naver_k5,"네이버경향5.csv",fileEncoding="UTF-8")


naver_k6 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002959499")
naver_k6 <- as.data.frame(naver_k6)
userName_k6 <- naver_k6$userName
contents_k6 <- naver_k6$contents
like_k6 <- naver_k6$sympathyCount
dislike_k6 <- naver_k6$antipathyCount
naver_k6 <- data.frame(userName_k6,contents_k6,like_k6,dislike_k6)
naver_k6<-naver_k6 %>% arrange(desc(like_k6)) 
View(naver_k6)
write.csv(naver_k6,"네이버경향6.csv",fileEncoding="UTF-8")

naver_k7 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002959650")
naver_k7 <- as.data.frame(naver_k7)
userName_k7 <- naver_k7$userName
contents_k7 <- naver_k7$contents
like_k7 <- naver_k7$sympathyCount
dislike_k7 <- naver_k7$antipathyCount
naver_k7 <- data.frame(userName_k7,contents_k7,like_k7,dislike_k7)
naver_k7<-naver_k7 %>% arrange(desc(like_k7)) 
View(naver_k7)
write.csv(naver_k7,"네이버경향7.csv",fileEncoding="UTF-8")

naver_k8 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002961750")
naver_k8 <- as.data.frame(naver_k8)
userName_k8 <- naver_k8$userName
contents_k8 <- naver_k8$contents
like_k8 <- naver_k8$sympathyCount
dislike_k8 <- naver_k8$antipathyCount
naver_k8 <- data.frame(userName_k8,contents_k8,like_k8,dislike_k8)
naver_k8<-naver_k8 %>% arrange(desc(like_k8)) 
View(naver_k8)
write.csv(naver_k8,"네이버경향8.csv",fileEncoding="UTF-8")

naver_k9 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?mode=LSD&mid=sec&sid1=102&oid=032&aid=0002962504")
naver_k9 <- as.data.frame(naver_k9)
userName_k9 <- naver_k9$userName
contents_k9 <- naver_k9$contents
like_k9 <- naver_k9$sympathyCount
dislike_k9 <- naver_k9$antipathyCount
naver_k9 <- data.frame(userName_k9,contents_k9,like_k9,dislike_k9)
naver_k9<-naver_k9 %>% arrange(desc(like_k9)) 
View(naver_k9)
write.csv(naver_k9,"네이버경향9.csv",fileEncoding="UTF-8")

#######################################################
naver_k9 <- N2H4::getAllComment(turl = "https://news.naver.com/main/read.nhn?m_view=1&includeAllCount=true&mode=LSD&mid=sec&sid1=100&oid=018&aid=0004536674")
naver_k9 <- as.data.frame(naver_k9)
Usernames <- naver_k9$userName
Contents<- naver_k9$contents
like <- naver_k9$sympathyCount
dislike <- naver_k9$antipathyCount
soon<-as.double(naver_k9$sympathyCount)-as.double(naver_k9$antipathyCount)
naver_k9 <- data.frame(Usernames, Contents, like, dislike,soon)
naver_seoul<-naver_k9 %>% arrange(desc(soon)) 
View(naver_seoul)
write.csv(naver_seoul,"이데일리.csv",fileEncoding="euc-kr")
