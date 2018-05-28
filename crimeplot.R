setwd("C:/Users/Hello world/Documents/crime")
Total_df = read.csv("criminal.csv")

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
#spot = table(Total_df$Spot)


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

#barplot(spot,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Crime Spot",col="black")
