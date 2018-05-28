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
#previous = table(Total_df$Previous)

#Crime spot
#spot = table(Total_df$Spot)


barplot(age,xlab = "Age",ylab = "number of persons",main = "Age criminal",col="black")

barplot(gender,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(money,xlab = "1 Low | 2 Mid | High",ylab = "number of persons",main = "Income criminal",col="black")

barplot(education,xlab = "",ylab = "number of persons",main = "Education criminal",col="black")

barplot(parents,xlab = "1 Marriage",ylab = "number of persons",main = "Gender criminal",col="black")
1 부모O / 2 아빠만 /  3 엄마만 / 4 없쯤
barplot(marriage,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(day,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(time,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(type,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(previous,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")

barplot(spot,xlab = "0 Woman | 1 Man",ylab = "number of persons",main = "Gender criminal",col="black")
