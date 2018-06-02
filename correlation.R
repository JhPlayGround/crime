setwd("D:/crime")

library(PerformanceAnalytics)
library(corrplot)
library(RColorBrewer)

criminal = read.csv("criminal.csv",header=T,stringsAsFactors = F)
criminal

############################나이########################
criminalAG = criminal[,c(1,2)]
criminalAG = table(criminalAG)
criminalAG
barplot(t(criminalAG), beside= T,
        main = "범죄자의 나이와 성별 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topleft", c("여자", "남자"), cex=1, fill =c("black","gray"))


criminalAM = criminal[,c(1,3)]
criminalAM = table(criminalAM)
criminalAM
barplot(t(criminalAM), beside= T, col=c("black","gray","white"),
        main = "범죄자의 나이와 소득 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topleft", c("하", "중","상"), cex=1, fill =c("black","gray","white"))

criminalAE = criminal[,c(1,4)]
criminalAE = table(criminalAE)
criminalAE
barplot(t(criminalAE),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 나이와 학력수준 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright", c("초등학교", "중학교","고등학교","대학교 2년제","대학교 4년제","대학원"), cex=1, fill=c("black","gray","white","red","blue","purple"))

criminalAP = criminal[,c(1,5)]
criminalAP = table(criminalAP)
criminalAP
barplot(t(criminalAP),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 나이와 부모관계 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright", c("양부모","부","모","고아"), cex=1, fill=c("black","gray","white","red"))

criminalAMA = criminal[,c(1,6)]
criminalAMA = table(criminalAMA)
criminalAMA
barplot(t(criminalAMA),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 나이와 결혼관계 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright", c("결혼","동거","이혼","사별"), cex=1, fill=c("black","gray","white","red"))

criminalAPre = criminal[,c(1,7)]
criminalAPre = table(criminalAPre)
criminalAPre
barplot(t(criminalAPre), beside = T, col = c("black","white"),
        main = "범죄자의 나이와 전과 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright",c("없음","있음"),cex=1, fill=c("black","white")) 

criminalAD = criminal[,c(1,8)]
criminalAD = table(criminalAD)
criminalAD
barplot(t(criminalAD),beside = T,col = c("black","gray","white","red","blue","purple","green")
        ,main = "범죄자의 나이와 요일 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright",c("월","화","수","목","금","토","일"), cex = 1, fill =c("black","gray","white","red","blue","purple","green"))


criminalAT = criminal[,c(1,9)]
criminalAT = table(criminalAT)
criminalAT
barplot(t(criminalAT),beside = T,col = c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 나이와 시간 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))


criminalAS = criminal[,c(1,10)]
criminalAS = table(criminalAS)
criminalAS
barplot(t(criminalAS),beside = T,col = c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 나이와 장소 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))


criminalATy = criminal[,c(1,11)]
criminalATy = table(criminalATy)
criminalATy
barplot(t(criminalATy),beside = T,col = c("black","gray","white","red","blue","purple"),
        main = "범죄자의 나이와 죄종 비교",xlab="나이",ylab="범죄자 수",names=c("10대","20대","30대","40대","50대","60대","70대"))
legend("topright",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))

############################성별########################

criminalGA = criminal[,c(2,1)]
criminalGA = table(criminalGA)
criminalGA
barplot(t(criminalGA),beside = T, col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 성별과 나이 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("10대","20대","30대","40대","50대","60대","70대"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))


criminalGM = criminal[,c(2,3)]
criminalGM = table(criminalGM)
criminalGM
barplot(t(criminalGM),beside = T, col=c("black","gray","white"),
        main = "범죄자의 성별과 소득수준간의 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("하","중","상"),cex = 1,
       fill = c("black","gray","white"))

criminalGE = criminal[,c(2,4)]
criminalGE = table(criminalGE)
criminalGE
barplot(t(criminalGE),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 성별과 학력수준의 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("Elementary","Middle","High","Univ2","Univ4","Graduate"),cex = 1,
       fill = c("black","gray","white","red","blue","purple"))

criminalGP = criminal[,c(2,5)]
criminalGP = table(criminalGP)
criminalGP
barplot(t(criminalGP),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 성별과 부모관계 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("양부모","부","모","고아"),cex = 1,
       fill = c("black","gray","white","red"))

criminalGMA = criminal[,c(2,6)]
criminalGMA = table(criminalGMA)
criminalGMA
barplot(t(criminalGMA),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 성별과 결혼관계 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("결혼","동거","이혼","사별"),cex = 1,
       fill = c("black","gray","white","red"))

criminalGPre = criminal[,c(2,7)]
criminalGPre = table(criminalGPre)
criminalGPre
barplot(t(criminalGPre),beside = T, col=c("black","gray"),
        main = "범죄자의 성별과 전과 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("없음","있음"),cex = 1,
       fill = c("black","gray"))

criminalGD = criminal[,c(2,8)]
criminalGD = table(criminalGD)
criminalGD
barplot(t(criminalGD),beside = T, col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 성별과 요일 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("월","화","수","목","금","토","일"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))


criminalGT = criminal[,c(2,9)]
criminalGT = table(criminalGT)
criminalGT
barplot(t(criminalGT),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 성별과 시간 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))

criminalGS = criminal[,c(2,10)]
criminalGS = table(criminalGS)
criminalGS
barplot(t(criminalGS),beside = T,col = c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 성별과 장소 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))

criminalGTy = criminal[,c(2,11)]
criminalGTy = table(criminalGTy)
criminalGTy
barplot(t(criminalGTy),beside = T,col = c("black","gray","white","red","blue","purple"),
        main = "범죄자의 성별과 죄종 비교",xlab="성별",ylab="범죄자 수",names=c("여자","남자"))
legend("topleft",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))



############################소득########################
criminalMA = criminal[,c(3,1)]
criminalMA = table(criminalMA)
criminalMA
barplot(t(criminalMA),beside = T, col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 소득과 나이 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("10대","20대","30대","40대","50대","60대","70대"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))


criminalMG = criminal[,c(3,2)]
criminalMG = table(criminalMG)
criminalMG
barplot(t(criminalMG),beside = T, col=c("black","gray"),
        main = "범죄자의 소득과 성별 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright", c("여자", "남자"), cex=1, fill =c("black","gray"))

criminalME = criminal[,c(3,4)]
criminalME = table(criminalME)
criminalME
barplot(t(criminalME),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 소득과 학력수준 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("초등학교","중학교","고등학교","대학교 2년제","대학교 4년제","대학원"),cex = 1,
       fill = c("black","gray","white","red","blue","purple"))

criminalMP = criminal[,c(3,5)]
criminalMP = table(criminalMP)
criminalMP
barplot(t(criminalMP),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 소득과 부모관계 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("양부모","부","모","고아"),cex = 1,
       fill = c("black","gray","white","red"))

criminalMM = criminal[,c(3,6)]
criminalMM = table(criminalMM)
criminalMM
barplot(t(criminalMM),beside = T, col=c("black","gray","white","red"),
        main = "범죄자의 소득과 결혼관계 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("결혼","동거","이혼","사별"),cex = 1,
       fill = c("black","gray","white","red"))

criminalMPre = criminal[,c(3,7)]
criminalMPre = table(criminalMPre)
criminalMPre
barplot(t(criminalMPre),beside = T, col=c("black","gray"),
        main = "범죄자의 소득과 전과 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("없음","있음"),cex = 1,
       fill = c("black","gray"))

criminalMD = criminal[,c(3,8)]
criminalMD = table(criminalMD)
criminalMD
barplot(t(criminalMD),beside = T, col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 소득과 요일 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("월","화","수","목","금","토","일"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalMT = criminal[,c(3,9)]
criminalMT = table(criminalMT)
criminalMT
barplot(t(criminalMT),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 소득과 시간 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))

criminalMS = criminal[,c(3,10)]
criminalMS = table(criminalMS)
criminalMS
barplot(t(criminalMS),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 소득과 장소 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))

criminalMTy = criminal[,c(3,11)]
criminalMTy = table(criminalMTy)
criminalMTy
barplot(t(criminalMTy),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 소득과 죄종 비교",xlab="소득수준",ylab="범죄자 수",names=c("하","중","상"))
legend("topright",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))


############################교육########################
criminalEA = criminal[,c(4,1)]
criminalEA = table(criminalEA)
criminalEA
barplot(t(criminalEA),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 교육수준과 나이 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("10대","20대","30대","40대","50대","60대","70대"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalEG = criminal[,c(4,2)]
criminalEG = table(criminalEG)
criminalEG
barplot(t(criminalEG),beside=T,col=c("black","gray"),
        main = "범죄자의 교육수준과 성별 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright", c("여자", "남자"), cex=1, fill =c("black","gray"))


criminalEM = criminal[,c(4,3)]
criminalEM = table(criminalEM)
criminalEM
barplot(t(criminalEM),beside=T,col=c("black","gray","white"),
        main = "범죄자의 교육수준과 소득수준 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topleft",c("하","중","상"),cex = 1, fill = c("black","gray","white"))

criminalEP = criminal[,c(4,5)]
criminalEP = table(criminalEP)
criminalEP
barplot(t(criminalEP),beside=T,col=c("black","gray","white","red"),
        main = "범죄자의 교육수준과 부모관계 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("양부모","부","모","고아"),cex = 1,fill = c("black","gray","white","red"))


criminalEM = criminal[,c(4,6)]
criminalEM = table(criminalEM)
criminalEM
barplot(t(criminalEM),beside=T,col=c("black","gray","white","red"),
        main = "범죄자의 교육수준과 결혼 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("결혼","동거","이혼","사별"),cex = 1,
       fill = c("black","gray","white","red"))

criminalEPre = criminal[,c(4,7)]
criminalEPre = table(criminalEPre)
criminalEPre
barplot(t(criminalEPre),beside=T,col=c("black","gray"),
        main = "범죄자의 교육수준과 전과 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("없음","있음"),cex = 1,fill = c("black","gray"))

criminalED = criminal[,c(4,8)]
criminalED = table(criminalED)
criminalED
barplot(t(criminalED),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 교육수준과 요일 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("월","화","수","목","금","토","일"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalET = criminal[,c(4,9)]
criminalET = table(criminalET)
criminalET
barplot(t(criminalET),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 교육수준과 시간 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))

criminalES = criminal[,c(4,10)]
criminalES = table(criminalES)
criminalES
barplot(t(criminalES),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 교육수준과 장소 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 0.8, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))

criminalETy = criminal[,c(4,11)]
criminalETy = table(criminalETy)
criminalETy
barplot(t(criminalETy),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 교육수준과 죄종 비교",xlab="학력수준",ylab="범죄자 수",names=c("초등학교","중학교","고등학교","2년제","4년제","대학원"))
legend("topright",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))


############################부모########################
criminalPA = criminal[,c(5,1)]
criminalPA = table(criminalPA)
criminalPA
barplot(t(criminalPA),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 부모관계와 나이 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("10대","20대","30대","40대","50대","60대","70대"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalPG = criminal[,c(5,2)]
criminalPG = table(criminalPG)
criminalPG
barplot(t(criminalPG),beside=T,col=c("black","gray"),
        main = "범죄자의 부모관계와 성별 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright", c("여자", "남자"), cex=1, fill =c("black","gray"))

criminalPM = criminal[,c(5,3)]
criminalPM = table(criminalPM)
criminalPM
barplot(t(criminalPM),beside=T,col=c("black","gray","white"),
        main = "범죄자의 부모관계와 소득수준 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("하","중","상"),cex = 1,fill = c("black","gray","white"))

criminalPE = criminal[,c(5,4)]
criminalPE = table(criminalPE)
criminalPE
barplot(t(criminalPE),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 부모관계와 학력수준 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("초등학교","중학교","고등학교","대학교 2년제","대학교 4년제","대학원"),cex = 1,
       fill = c("black","gray","white","red","blue","purple"))

criminalPMA = criminal[,c(5,6)] 
criminalPMA = table(criminalPMA)
criminalPMA
barplot(t(criminalPMA),beside=T,col=c("black","gray","white","red"),
        main = "범죄자의 부모관계와 결혼 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("결혼","동거","이혼","사별"),cex = 1,
       fill = c("black","gray","white","red"))

criminalPP = criminal[,c(5,7)]
criminalPP = table(criminalPP)
criminalPP
barplot(t(criminalPP),beside=T,col=c("black","gray"),
        main = "범죄자의 부모관계와 전과 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("없음","있음"),cex = 1,
       fill = c("black","gray"))

criminalPD = criminal[,c(5,8)]
criminalPD = table(criminalPD)
criminalPD
barplot(t(criminalPD),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 부모관계과 요일 비교",xlab="부모관계",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("월","화","수","목","금","토","일"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalPT = criminal[,c(5,9)]
criminalPT = table(criminalPT)
criminalPT
barplot(t(criminalPT),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 부모관계와 시간 비교",xlab="학력수준",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))

criminalPS = criminal[,c(5,10)]
criminalPS = table(criminalPS)
criminalPS
barplot(t(criminalPS),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 부모관계와 장소 비교",xlab="학력수준",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 0.8, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))


criminalPTy = criminal[,c(5,11)]
criminalPTy = table(criminalPTy)
criminalPTy
barplot(t(criminalPTy),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 부모관계와 죄종 비교",xlab="학력수준",ylab="범죄자 수",names=c("양부모","부","모","고아"))
legend("topright",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))


############################결혼########################
criminalMAA = criminal[,c(6,1)]
criminalMAA = table(criminalMAA)
criminalMAA
barplot(t(criminalMAA),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 결혼여부와 나이 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("10대","20대","30대","40대","50대","60대","70대"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalMAG = criminal[,c(6,2)]
criminalMAG = table(criminalMAG)
criminalMAG
barplot(t(criminalMAG),beside=T,col=c("black","gray"),
        main = "범죄자의 결혼여부와 성별 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright", c("여자", "남자"), cex=1, fill =c("black","gray"))

criminalMAM = criminal[,c(6,3)]
criminalMAM = table(criminalMAM)
criminalMAM
barplot(t(criminalMAM),beside=T,col=c("black","gray","white"),
        main = "범죄자의 결혼여부와 소득수준 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("하","중","상"),cex = 1, fill = c("black","gray","white"))


criminalMAE = criminal[,c(6,4)]
criminalMAE = table(criminalMAE)
criminalMAE
barplot(t(criminalMAE),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 결혼여부와 학력수준 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("초등학교","중학교","고등학교","대학교 2년제","대학교 4년제","대학원"),cex = 1,
       fill = c("black","gray","white","red","blue","purple"))

criminalMAP = criminal[,c(6,5)]
criminalMAP = table(criminalMAP)
criminalMAP
barplot(t(criminalMAP),beside=T,col=c("black","gray","white","red"),
        main = "범죄자의 결혼여부와 부모관계 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("양부모","부","모","고아"),cex = 1,fill = c("black","gray","white","red"))

criminalMAP = criminal[,c(6,7)]
criminalMAP = table(criminalMAP)
criminalMAP
barplot(t(criminalMAP),beside=T,col=c("black","gray"),
        main = "범죄자의 결혼여부와 전과 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("없음","있음"),cex = 1,
       fill = c("black","gray"))

criminalMAD = criminal[,c(6,8)]
criminalMAD = table(criminalMAD)
criminalMAD
barplot(t(criminalMAD),beside=T,col=c("black","gray","white","red","blue","purple","green"),
        main = "범죄자의 결혼여부과 요일 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("월","화","수","목","금","토","일"),cex = 1,
       fill = c("black","gray","white","red","blue","purple","green"))

criminalMAT = criminal[,c(6,9)]
criminalMAT = table(criminalMAT)
criminalMAT
barplot(t(criminalMAT),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow"),
        main = "범죄자의 결혼여부와 시간 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("24:00~02:59","03:00~05:59","06:00~08:59","09:00~11:59","12:00~14:59","15:00~17:59","18:00~20:59","21:00~23:59"), 
       cex = 1, fill =c("black","gray","white","red","blue","purple","green","yellow"))

criminalMAS = criminal[,c(6,10)]
criminalMAS = table(criminalMAS)
criminalMAS
barplot(t(criminalMAS),beside = T, col=c("black","gray","white","red","blue","purple","green","yellow","orange","pink"),
        main = "범죄자의 결혼여부와 장소 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("광역시 및 특별시","경기도","강원도","충북","충남","전북","전남","경북","경남","제주"), 
       cex = 0.8, fill =c("black","gray","white","red","blue","purple","green","yellow","orange","pink"))

criminalMATy = criminal[,c(6,11)]
criminalMATy = table(criminalMATy)
criminalMATy
barplot(t(criminalMATy),beside = T, col=c("black","gray","white","red","blue","purple"),
        main = "범죄자의 결혼여부와 죄종 비교",xlab="결혼여부",ylab="범죄자 수",names=c("결혼","동거","이혼","사별"))
legend("topright",c("살인","강도","강간","방화","절도","폭행"),
       cex = 1, fill =c("black","gray","white","red","blue","purple"))
