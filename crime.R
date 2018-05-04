crimeSexAndAge = read.csv("sexAndage.csv",header=T,stringsAsFactors = F)
View(crimeSexAndAge)
library(dplyr)
#age2012 데이터 값을 지정
age_data= data.frame(crimeSexAndAge)
age2012 = age_data %>% select(죄종별.2.,X2012:X2012.6) %>% filter()
View(age2012)
age2012_data = rbind(age2012[3,])
age2012_data = rbind(age2012_data,age2012[4,])
age2012_data = rbind(age2012_data,age2012[5,])
age2012_data = rbind(age2012_data,age2012[6,])
age2012_data = rbind(age2012_data,age2012[7,])
age2012_data = rbind(age2012_data,age2012[8,])
age2012_data = rbind(age2012_data,age2012[14,])
age2012_data = rbind(age2012_data,age2012[15,])
age2012_data = rbind(age2012_data,age2012[16,])
age2012_data = rbind(age2012_data,age2012[17,])
age2012_data = rbind(age2012_data,age2012[18,])
age2012_data = rbind(age2012_data,age2012[19,])
View(age2012_data)
class(age2012_data$X2012)
data_a=sum(as.numeric(age2012_data$X2012))
data_b=sum(as.numeric(age2012_data$X2012.1))
data_c=sum(as.numeric(age2012_data$X2012.2))
data_d=sum(as.numeric(age2012_data$X2012.3))
data_e=sum(as.numeric(age2012_data$X2012.4))
data_f=sum(as.numeric(age2012_data$X2012.5))
data_g=sum(as.numeric(age2012_data$X2012.6))
data_h=sum(as.numeric(data_a,data_b,data_c,data_d,data_e,data_f,data_g))
age = read.csv("age.csv",header=T,stringsAsFactors = F)
age$X2012=c(data_a,data_b,data_c,data_d,data_e,data_f,data_g,data_h)

#age2013데이터 값을 지정
library(dplyr)
age2013 = age_data %>% select(죄종별.2.,X2013:X2013.6)
View(age2013)
age2013_data=rbind(age2013[3,])
age2013_data=rbind(age2013_data,age2013[4,])
age2013_data=rbind(age2013_data,age2013[5,])
age2013_data=rbind(age2013_data,age2013[6,])
age2013_data=rbind(age2013_data,age2013[7,])
age2013_data=rbind(age2013_data,age2013[8,])
age2013_data=rbind(age2013_data,age2013[14,])
age2013_data=rbind(age2013_data,age2013[15,])
age2013_data=rbind(age2013_data,age2013[16,])
age2013_data=rbind(age2013_data,age2013[17,])
age2013_data=rbind(age2013_data,age2013[18,])
age2013_data=rbind(age2013_data,age2013[19,])
View(age2012_data)

data_2013a=sum(as.numeric(age2013_data$X2013))
data_2013b=sum(as.numeric(age2013_data$X2013.1))
data_2013c=sum(as.numeric(age2013_data$X2013.2))
data_2013d=sum(as.numeric(age2013_data$X2013.3))
data_2013e=sum(as.numeric(age2013_data$X2013.4))
data_2013f=sum(as.numeric(age2013_data$X2013.5))
data_2013g=sum(as.numeric(age2013_data$X2013.6))
data_2013h=sum(as.numeric(data_2013a,data_2013b,data_2013c,data_2013d,data_2013e,data_2013f,data_2013g))
age$X2013 = c(data_2013a,data_2013b,data_2013c,data_2013d,data_2013e,data_2013f,data_2013g,data_2013h)
age

age2014 = age_data %>% select(죄종별.2.,X2014:X2014.6)
View(age2014)
#for문은 i~10까지
#age2014 데이터 값을 지정.
age2014_data = rbind(age2014[3,])
for(i in 4:8)
{
  age2014_data = rbind(age2014_data,age2014[i,])
}
for(i in 15:19)
{
  age2014_data = rbind(age2014_data,age2014[i,])
}
View(age2014_data)
data_2014a=sum(as.numeric(age2014_data$X2014))
data_2014b=sum(as.numeric(age2014_data$X2014.1))
data_2014c=sum(as.numeric(age2014_data$X2014.2))
data_2014d=sum(as.numeric(age2014_data$X2014.3))
data_2014e=sum(as.numeric(age2014_data$X2014.4))
data_2014f=sum(as.numeric(age2014_data$X2014.5))
data_2014g=sum(as.numeric(age2014_data$X2014.6))
data_2014h=sum(as.numeric(data_2014a,data_2014b,data_2014c,data_2014d,data_2014e,data_2014f,data_2014g))
age$X2014 = c(data_2014a,data_2014b,data_2014c,data_2014d,data_2014e,data_2014f,data_2014g,data_2014h)
age

library(dplyr)
#age2015 데이터 값을 지정
age2015 = age_data %>% select(죄종별.2.,X2015:X2015.6)
View(age2015)
age2015_data = rbind(age2015[3,])
for(i in 4:8)
{
  age2015_data = rbind(age2015_data,age2015[i,])
}
for(i in 15:19)
{
  age2015_data = rbind(age2015_data,age2015[i,])
}
View(age2015_data)
data_2015a=sum(as.numeric(age2015_data$X2015))
data_2015b=sum(as.numeric(age2015_data$X2015.1))
data_2015c=sum(as.numeric(age2015_data$X2015.2))
data_2015d=sum(as.numeric(age2015_data$X2015.3))
data_2015e=sum(as.numeric(age2015_data$X2015.4))
data_2015f=sum(as.numeric(age2015_data$X2015.5))
data_2015g=sum(as.numeric(age2015_data$X2015.6))
data_2015h=sum(as.numeric(data_2015a,data_2015b,data_2015c,data_2015d,data_2015e,data_2015f,data_2015g))
age$X2015 = c(data_2015a,data_2015b,data_2015c,data_2015d,data_2015e,data_2015f,data_2015g,data_2015h)
age

#age2016 데이터 값을 지정
age2016 = age_data %>% select(죄종별.2.,X2016:X2016.6)
View(age2016)
age2016_data = rbind(age2016[3,])
for(i in 4:8)
{
  age2016_data = rbind(age2016_data,age2016[i,])
}
for(i in 15:19)
{
  age2016_data = rbind(age2016_data,age2016[i,])
}
View(age2016_data)
data_2016a=sum(as.numeric(age2016_data$X2016))
data_2016b=sum(as.numeric(age2016_data$X2016.1))
data_2016c=sum(as.numeric(age2016_data$X2016.2))
data_2016d=sum(as.numeric(age2016_data$X2016.3))
data_2016e=sum(as.numeric(age2016_data$X2016.4))
data_2016f=sum(as.numeric(age2016_data$X2016.5))
data_2016g=sum(as.numeric(age2016_data$X2016.6))
data_2016h=sum(as.numeric(data_2016a,data_2016b,data_2016c,data_2016d,data_2016e,data_2016f,data_2016g))
age$X2016 = c(data_2016a,data_2016b,data_2016c,data_2016d,data_2016e,data_2016f,data_2016g,data_2016h)
age
library(readxl)
write.csv(age, file = "TotalAge.csv")
