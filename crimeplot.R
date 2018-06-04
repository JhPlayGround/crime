setwd("C:/Users/Hello world/Documents/crime")
Total_df = read.csv("criminal.csv")

#########################Duo Data Plot########################

#########################Previous Duo#########################
###Previous - Age###
Previous_A = table(Total_df$Age,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 나이 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topright", c("10대", "20대","30대","40대","50대","60대","70대"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Gender###
Previous_A = table(Total_df$Gender,Total_df$Previous)
Previous_A

barplot(Previous_A,width=0.1,beside=TRUE,main="범죄자의전과와 성별 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("center", c("여자","남자"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Money###
Previous_A = table(Total_df$Money,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 소득수준 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topright", c("소득 낮음","소득 중간","소득 높음"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Education###
Previous_A = table(Total_df$Education,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 교육수준 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("초등학교","중학교","고등학교","대학교2년","대학교4년","대학원"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Parents###
Previous_A = table(Total_df$Parents,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 부모여부 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topright", c("둘다 있음","아빠만","엄마만","없음"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Marriage###
Previous_A = table(Total_df$Marriage,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 결혼여부 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topright", c("결혼", "동거","이별","사별"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Day###
Previous_A = table(Total_df$Day,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 요일 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("center", c("월","화","수","목","금","토","일"), cex=0.8, fill =rainbow(nrow(Previous_A)))

###Previous - Time###
Previous_A = table(Total_df$Time,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 시간 비교",names=c("전과 없음","전과 있음"),col=c("black","white","red","green","violet","orange","yellow","blue"))
legend("topleft", c("00~03","~06","~09","~12","~15","~18","~21","~24"), cex=0.6, fill =c("black","white","red","green","violet","orange","yellow","blue"))

###Previous - Type###
Previous_A = table(Total_df$Type,Total_df$Previous)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 죄종 비교",names=c("전과 없음","전과 있음"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("살인","강도","강간","방화","절도","폭행"), cex=1, fill =rainbow(nrow(Previous_A)))

###Previous - Spot###
Previous_A = table(Total_df$Spot,Total_df$Previous)
Previous_A교

barplot(Previous_A, beside=TRUE,main="범죄자의 전과와 장소 비교",names=c("전과 없음","전과 있음"),col =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))
legend("topright", c("특별시,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"), cex=1, fill =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))

###################################################################
##############################Day Duo##############################
###Day - Age###
Previous_A = table(Total_df$Age,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 나이 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topright", c("10대", "20대","30대","40대","50대","60대","70대"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Day - Gender###
Previous_A = table(Total_df$Gender,Total_df$Day)
Previous_A

barplot(Previous_A,width=0.1,beside=TRUE,main="범죄자의 요일과 성별 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("center", c("여자","남자"), cex=1, fill =rainbow(nrow(Previous_A)))

###Day - Money###
Previous_A = table(Total_df$Money,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 소득수준 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topright", c("소득 낮음","소득 중간","소득 높음"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Day - Education###
Previous_A = table(Total_df$Education,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 교육수준 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topright", c("초등학교","중학교","고등학교","대학교2년","대학교4년","대학원"), cex=0.55, fill =rainbow(nrow(Previous_A)))

###Day - Parents###
Previous_A = table(Total_df$Parents,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 부모여부 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topright", c("둘다 있음","아빠만","엄마만","없음"), cex=0.7, fill =rainbow(nrow(Previous_A)))

###Day - Marriage###
Previous_A = table(Total_df$Marriage,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 결혼여부 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topright", c("결혼", "동거","이별","사별"), cex=1, fill =rainbow(nrow(Previous_A)))

###Day - Previous###
Previous_A = table(Total_df$Previous,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 전과 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("center", c("전과 없음","전과 있음"), cex=0.8, fill =rainbow(nrow(Previous_A)))

###Day - Time###
Previous_A = table(Total_df$Time,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 시간 비교",names=c("월","화","수","목","금","토","일"),col=c("black","white","red","green","violet","orange","yellow","blue"))
legend("topleft", c("00~03","~06","~09","~12","~15","~18","~21","~24"), cex=0.6, fill =c("black","white","red","green","violet","orange","yellow","blue"))

###Day - Type###
Previous_A = table(Total_df$Type,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 죄종 비교",names=c("월","화","수","목","금","토","일"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("살인","강도","강간","방화","절도","폭행"), cex=0.9, fill =rainbow(nrow(Previous_A)))

###Day - Spot###
Previous_A = table(Total_df$Spot,Total_df$Day)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 요일과 장소 비교",names=c("월","화","수","목","금","토","일"),col = c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))
legend("topright", c("특별시,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"), cex=0.6, fill =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))

#################################################################
#############################Time Duo#############################
###Time - Age###
Previous_A = table(Total_df$Age,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 나이 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col =rainbow(nrow(Previous_A)))
legend("topright", c("10대", "20대","30대","40대","50대","60대","70대"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Time - Gender###
Previous_A = table(Total_df$Gender,Total_df$Time)
Previous_A

barplot(Previous_A,width=0.1,beside=TRUE,main="범죄자의 시간과 성별 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("여자","남자"), cex=1, fill =rainbow(nrow(Previous_A)))

###Time - Money###
Previous_A = table(Total_df$Money,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 소득수준 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topright", c("소득 낮음","소득 중간","소득 높음"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Time - Education###
Previous_A = table(Total_df$Education,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 교육수준 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("초등학교","중학교","고등학교","대학교2년","대학교4년","대학원"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Time - Parents###
Previous_A = table(Total_df$Parents,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 부모여부 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topright", c("둘다 있음","아빠만","엄마만","없음"), cex=0.7, fill =rainbow(nrow(Previous_A)))

###Time - Marriage###
Previous_A = table(Total_df$Marriage,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 결혼여부 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topright", c("결혼", "동거","이별","사별"), cex=1, fill =rainbow(nrow(Previous_A)))

###Time - Previous###
Previous_A = table(Total_df$Previous,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 전과 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("전과 없음","전과 있음"), cex=0.8, fill =rainbow(nrow(Previous_A)))

###Time - Day###
Previous_A = table(Total_df$Day,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 요일 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("월","화","수","목","금","토","일"), cex=0.6, fill =c("black","white","red","green","violet","orange","yellow","blue"))

###Time - Type###
Previous_A = table(Total_df$Type,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 죄종 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("살인","강도","강간","방화","절도","폭행"), cex=0.9, fill =rainbow(nrow(Previous_A)))

###Time - Spot###
Previous_A = table(Total_df$Spot,Total_df$Time)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 시간과 장소 비교",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"),col = c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))
legend("topleft", c("특별시,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"), cex=0.7, fill =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))

#################################################################
############################Spot Duo#############################
###Spot - Age###
Previous_A = table(Total_df$Age,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 나이 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col = rainbow(nrow(Previous_A)))
legend("topright", c("10대", "20대","30대","40대","50대","60대","70대"), cex=1, fill =rainbow(nrow(Previous_A)))

###Spot - Gender###
Previous_A = table(Total_df$Gender,Total_df$Spot)
Previous_A

barplot(Previous_A,width=0.1,beside=TRUE,main="범죄자의 장소와 성별 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("center", c("여자","남자"), cex=1, fill =rainbow(nrow(Previous_A)))

###Spot - Money###
Previous_A = table(Total_df$Money,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 소득수준 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("topright", c("소득 낮음","소득 중간","소득 높음"), cex=0.6, fill =rainbow(nrow(Previous_A)))

###Spot - Education###
Previous_A = table(Total_df$Education,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 교육수준 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("topright", c("초등학교","중학교","고등학교","대학교2년","대학교4년","대학원"), cex=1, fill =rainbow(nrow(Previous_A)))

###Spot - Parents###
Previous_A = table(Total_df$Parents,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 부모여부 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("topright", c("둘다 있음","아빠만","엄마만","없음"), cex=1, fill =rainbow(nrow(Previous_A)))

###Spot - Marriage###
Previous_A = table(Total_df$Marriage,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 결혼여부 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("topright", c("결혼", "동거","이별","사별"), cex=1, fill =rainbow(nrow(Previous_A)))

###Spot - Previous###
Previous_A = table(Total_df$Previous,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 전과 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("center", c("전과 없음","전과 있음"), cex=0.8, fill =rainbow(nrow(Previous_A)))

###Spot - Time###
Previous_A = table(Total_df$Time,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 시간 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=c("black","white","red","green","violet","orange","yellow","blue"))
legend("topright", c("00~03","~06","~09","~12","~15","~18","~21","~24"), cex=1, fill =c("black","white","red","green","violet","orange","yellow","blue"))

###Spot - Type###
Previous_A = table(Total_df$Type,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 죄종 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col=rainbow(nrow(Previous_A)))
legend("topright", c("살인","강도","강간","방화","절도","폭행"), cex=0.9, fill =rainbow(nrow(Previous_A)))

###Spot - Day###
Previous_A = table(Total_df$Day,Total_df$Spot)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 장소와 요일 비교",names=c("특별,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"),col = c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))
legend("topright", c("월","화","수","목","금","토","일"), cex=1, fill =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))

#################################################################
#############################Type Duo############################
###Type - Age###
Previous_A = table(Total_df$Age,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 나이 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("10대", "20대","30대","40대","50대","60대","70대"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Gender###
Previous_A = table(Total_df$Gender,Total_df$Type)
Previous_A

barplot(Previous_A,width=0.1,beside=TRUE,main="범죄자의 죄종과 성별 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("center", c("여자","남자"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Money###
Previous_A = table(Total_df$Money,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 소득수준 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topright", c("소득 낮음","소득 중간","소득 높음"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Education###
Previous_A = table(Total_df$Education,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 교육수준 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("초등학교","중학교","고등학교","대학교2년","대학교4년","대학원"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Parents###
Previous_A = table(Total_df$Parents,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 부모여부 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topright", c("둘다 있음","아빠만","엄마만","없음"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Marriage###
Previous_A = table(Total_df$Marriage,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 결혼여부 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topright", c("결혼", "동거","이별","사별"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Previous###
Previous_A = table(Total_df$Previous,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 전과여부 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("center", c("전과 없음","전과 있음"), cex=0.8, fill =rainbow(nrow(Previous_A)))

###Type - Time###
Previous_A = table(Total_df$Time,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 시간 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=c("black","white","red","green","violet","orange","yellow","blue"))
legend("topleft", c("00~03","~06","~09","~12","~15","~18","~21","~24"), cex=1, fill =c("black","white","red","green","violet","orange","yellow","blue"))

###Type - Day###
Previous_A = table(Total_df$Day,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 요일 비교",names=c("살인","강도","강간","방화","절도","폭행"),col=rainbow(nrow(Previous_A)))
legend("topleft", c("월","화","수","목","금","토","일"), cex=1, fill =rainbow(nrow(Previous_A)))

###Type - Spot###
Previous_A = table(Total_df$Spot,Total_df$Type)
Previous_A

barplot(Previous_A, beside=TRUE,main="범죄자의 죄종과 장소 비교",names=c("살인","강도","강간","방화","절도","폭행"),col = c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))
legend("topleft", c("특별시,광역시","경기도", "강원도","충청북도","충청남도","전라북도","전라남도","경상북도","경상남도","제주도"), cex=1, fill =c("black","white","red","green","violet","orange","yellow","blue","gray","brown"))

#################################################################

##########################Solo Data Plot#########################

#Age
age = table(Total_df$Age)

#Gender
gender= table(Total_df$Gender)

#Money
money = table(Total_df$Money)

#Education
education = table(Total_df$Education)

#Parents
parents = table(Total_df$Parents)

#Marriage
marriage = table(Total_df$Marriage)

#Crime Day
day = table(Total_df$Day)

#Crime Time
time = table(Total_df$Time)

#Crime Type
type = table(Total_df$Type)

#Previous
previous = table(Total_df$Previous)

#Crime spot
spot = table(Total_df$Spot)


barplot(age,xlab = "Age",ylab = "number of persons",main = "Age criminal",col="black",names=c("10~19","20~29","30~39","40~49","50~59","60~69","70~79"))

barplot(gender,xlab = "Gender",ylab = "number of persons",main = "Gender criminal",col="black",names=c("Woman","Man"))

barplot(money,xlab = "Money",ylab = "number of persons",main = "Income criminal",col="black",names=c("Low","Mid","High"))

barplot(education,xlab = "Education",ylab = "number of persons",main = "Education criminal",col="black",names=c("Elementary","Middle","High","Univ2","Univ4","Graduate"))

barplot(parents,xlab = "Parents",ylab = "number of persons",main = "Parents criminal",col="black",names=c("Parents","Father" ,"Mother","Orphan"))

barplot(marriage,xlab = "Marriage",ylab = "number of persons",main = "Marriage criminal",col="black",names=c("Marriage", "LiveTogether","divorce","bereavement"))

barplot(day,xlab = " Day ",ylab = "number of persons",main = "Crime Day criminal",col="black",names=c("Mon","TUE","WED","THU","FRI","SAT","SUN"))

barplot(time,xlab = " Time ",ylab = "number of persons",main = "Crime Time criminal",col="black",names=c("00~03","~06","~09","~12","~15","~18","~21","~24"))

barplot(type,xlab = "Type",ylab = "number of persons",main = "Crime Type criminal",col="black",names=c("Muder","Robber","Rape","Arson","Theft","Assault"))

barplot(previous,xlab = "Previous",ylab = "number of persons",main = "Previous criminal",col="black",names=c("No","Yes"))
pie(previous)

barplot(spot,xlab = "Spot",ylab = "number of persons",main = "Crime Spot",col="black",names=c("S.C","G.G", "G.W","C.B","C.N","J.B","J.N","G.B","G.N","J.J"))

