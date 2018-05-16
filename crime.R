setwd("D:/crime")

library(dplyr)

crimeSexAndAge = read.csv("sexAndage.csv",header=T,stringsAsFactors = F)
criminal = read.csv("criminal.csv",header=T,stringsAsFactors = F)

crimeSexAndAge[22,1] = "10~19"
crimeSexAndAge[23,1] = "20~29"
crimeSexAndAge[24,1] = "30~39"
crimeSexAndAge[25,1] = "40~49"
crimeSexAndAge[26,1] = "50~59"
crimeSexAndAge[27,1] = "60~69"
crimeSexAndAge[28,1] = "70~79"
crimeSexAndAge[21,2] = "2012"
crimeSexAndAge[21,3] = "2013"
crimeSexAndAge[21,4] = "2014"
crimeSexAndAge[21,5] = "2015"
crimeSexAndAge[21,6] = "2016"
crimeSexAndAge[21,7] = "Total"
crimeSexAndAge[21,8] = "Percentage"

#####################2012  M&W Add Age#######################################
k = 2
for(i in 22:28)
{
  for(j in 3:8)
  {
    crimeSexAndAge[i,2] = as.integer(crimeSexAndAge[i,2]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

k = 2
for(i in 22:28)
{
  for(j in 14:19)
  {
    crimeSexAndAge[i,2] = as.integer(crimeSexAndAge[i,2]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

#####################2013  M&W Add Age#######################################
k = 9
for(i in 22:28)
{
  for(j in 3:8)
  {
    crimeSexAndAge[i,3] = as.integer(crimeSexAndAge[i,3]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

k = 9
for(i in 22:28)
{
  for(j in 14:19)
  {
    crimeSexAndAge[i,3] = as.integer(crimeSexAndAge[i,3]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

#####################2014  M&W Add Age#######################################
k = 16
for(i in 22:28)
{
  for(j in 3:8)
  {
    crimeSexAndAge[i,4] = as.integer(crimeSexAndAge[i,4]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

k = 16
for(i in 22:28)
{
  for(j in 14:19)
  {
    crimeSexAndAge[i,4] = as.integer(crimeSexAndAge[i,4]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}


#####################2015  M&W Add Age#######################################
k = 23
for(i in 22:28)
{
  for(j in 3:8)
  {
    crimeSexAndAge[i,5] = as.integer(crimeSexAndAge[i,5]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

k = 23
for(i in 22:28)
{
  for(j in 14:19)
  {
    crimeSexAndAge[i,5] = as.integer(crimeSexAndAge[i,5]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}


#####################2016  M&W Add Age#######################################
k = 30
for(i in 22:28)
{
  for(j in 3:8)
  {
    crimeSexAndAge[i,6] = as.integer(crimeSexAndAge[i,6]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}

k = 30
for(i in 22:28)
{
  for(j in 14:19)
  {
    crimeSexAndAge[i,6] = as.integer(crimeSexAndAge[i,6]) + as.integer(crimeSexAndAge[j,k])
  }
  k = k + 1
}
##################### Total #######################################
for(i in 22:28)
{
  crimeSexAndAge[i,7] = sum(as.integer(crimeSexAndAge[i,2:6]))
}

##################### Percentage  #######################################
for(i in 22:28)
{
  crimeSexAndAge[i,8] = as.integer(crimeSexAndAge[i,7])/sum(as.integer(crimeSexAndAge[22:28,7]))
}

plot(crimeSexAndAge[22:28,7],type="h", axes=F, ann=F)
axis(1, at=1:7, lab=c("10대","20대","30대","40대","50대","60대","70ㄷ"))
axis(2, ylim=c(50000:350000))
title(main = "나이별 범죄자 수", col.main="red")
title(xlab = "나이", col.lab = "black")
title(ylab = "범죄자 수", col.lab="blue")
write.csv(crimeSexAndAge,"sexAndage.csv")
########################가상범죄자 만들기?##########################################
age = 0
age10 = 0
age20 = 0
age30 = 0
age40 = 0
age50 = 0
age60 = 0
age70 = 0

number1 = rep(1,times=16)
number2 = rep(2,times=16)
number3 = rep(3,times=18)
number4 = rep(4,times=23)
number5 = rep(5,times=19)
number6 = rep(6,times=6)
number7 = rep(7,times=2)

for(i in 1:10000)
{
  if(age == 1)
  {
    age10 = age10 + 1
  }
  else if(age == 2)
  {
    age20 = age20 + 1
  }
  else if(age == 3)
  {
    age30 = age30 + 1
  }
  else if(age == 4)
  {
    age40 = age40 + 1
  }
  else if(age == 5)
  {
    age50 = age50 + 1
  }
  else if(age == 6)
  {
    age60 = age60 + 1
  }
  else if(age == 7)
  {
    age70 = age70 + 1
  }
  else
  {
    
  }
  
  if (age10 == 1600)
  {
    if (age20 == 1600)
    {
      if (age30 == 1800)
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1111111
                print("다 채웠다.")
              }
              else
              {
                #1,2,3,4,5,6ㅇ, 7x
                number = c(number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,5,7o 6x
                number = c(number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,5 o 6,7x
                number = c(number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,4,6,7o 5x
                number = c(number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,6o 5,7x
                number = c(number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,7o 5,6x
                number = c(number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4o 5,6,7x
                number = c(number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,5,6,7o 4x
                number = c(number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,5,6o 4,7x
                number = c(number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,5,7o 4,6x
                number = c(number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,5o 4,6,7x
                number = c(number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,6,7o 4,5x
                number = c(number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,6o 4,5,7x
                number = c(number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,7o 4,5,6x
                number = c(number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3o 4,5,6,7x
                number = c(number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
      else
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,4,5,6,7o 3x
                number = c(number3)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,4,5,6o 3,7x
                number = c(number3,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,5,7o 3,6x
                number = c(number3,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,4,5o 3,6,7x
                number = c(number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,4,6,7o 3,5x
                number = c(number3,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,4,6o 3,5,7x
                number = c(number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,7o 3,5,6x
                number = c(number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,4o 3,5,6,7x
                number = c(number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,25,6,7o 3,4x
                number = c(number3,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,5,6o 3,4,7x
                number = c(number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,5,7o 3,4,6x
                number = c(number3,number4,number6)
                age = sample(number,1)
                criminal[i,1]= age
              }
              else
              {
                #1,2,5o 3,4,6,7x
                number = c(number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,6,7o 3,4,5x
                number = c(number3,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,6o 3,4,5,7x
                number = c(number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,7o 3,4,5,6x
                number = c(number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2o 3,4,5,6,7x
                number = c(number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
    }
    else
    {
      if (age30 == 1800)
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,4,5,6,7o 2x
                number = c(number2)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,5,6o 2,7x
                number = c(number2,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,5,7o  2,6x
                number = c(number2,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,5o 2,6,7x
                number = c(number2,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,4,6,7o 2,5x
                number = c(number2,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,6o 2,5,7x
                number = c(number2,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,7o 2,5,6x
                number = c(number2,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4o 2,5,6,7x
                number = c(number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,5,6,7o 2,4x
                number = c(number2,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,5,6o 2,4,7x
                number = c(number2,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,5,7o 2,4,6x
                number = c(number2,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,5o 2,4,6,7x
                number = c(number2,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,6,7o 2,4,5x
                number = c(number2,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,6o 2,4,5,7x
                number = c(number2,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,7o 2,4,5,6x
                number = c(number2,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3o 2,4,5,6,7x
                number = c(number2,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
      else
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,4,5,6,7o 2,3x
                number = c(number2,number3)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,5,6o 2,3,7x
                number = c(number2,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,5,7o 2,3,6x
                number = c(number2,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,5o 2,3,6,7x
                number = c(number2,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,4,6,7o 2,3,5x
                number = c(number2,number3,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,6o 2,3,5,7x
                number = c(number2,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,7o 2,3,5,6x
                number = c(number2,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4o 2,3,5,6,7x
                number = c(number2,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,5,6,7o 2,3,4x
                number = c(number2,number3,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,5,6o 2,3,4,7x
                number = c(number2,number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,5,7o 2,3,4,6x
                number = c(number2,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,5o 2,3,4,6,7x
                number = c(number2,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,6,7o 2,3,4,5x
                number = c(number2,number3,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,6o 2,3,4,5,7x
                number = c(number,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,7o 2,3,4,5,6x
                number = c(number2,number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1o 2,3,4,5,6x
                number = c(number2,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
    }
  }
  else
  {
    if (age20 == 1600)
    {
      if (age30 == 1800)
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1x 2,3,4,5,6,7o
                number = c(number1)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,7x 2,3,4,5,6o
                number = c(number1,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,6x 2,3,4,5,7o
                number = c(number1,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,6,7x 2,3,4,5o
                number = c(number1,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,5x 2,3,4,6,7o
                number = c(number1,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,5,7x 2,3,4,6o
                number = c(number1,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,5,6x 2,3,4,7
                number = c(number1,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,5,6,7x 2,3,4o
                number = c(number1,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,4x 2,3,5,6,7o
                number = c(number1,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,7x 2,3,5,6o
                number = c(number1,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,6x 2,3,5,7o
                number = c(number1,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,6,7x 2,3,5o
                number = c(number1,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,4,5x 2,3,6,7o
                number = c(number1,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,5,7x 2,3,6o
                number = c(number1,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,5,6x 2,37o
                number = c(number1,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,4,5,6,7x 2,3o
                number = c(number1,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
      else
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3x 2,4,5,6,7o
                number = c(number1,number3)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,7x 2,4,5,6o
                number = c(number1,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,6x 2,4,5,7o
                number = c(number1,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,6,7x 2,4,5o
                number = c(number1,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,5x 2,4,6,7o
                number = c(number1,number3,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,5,7x 2,4,6o
                number = c(number1,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,5,6x 2,4,7o
                number = c(number1,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,5,6,7x 2,4o
                number = c(number1,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,4x 2,5,6,7o
                number = c(number1,number3,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,7x 2,5,6o
                number = c(number1,number3,number4,number7)
                age =sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,6x 2,5,7o
                number = c(number1,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,6,7x 2,5o
                number = c(number1,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,3,4,5x 2,6,7o
                number = c(number1,number3,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,5,7x 2,6o
                number = c(number1,number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,5,6x 2,7o
                number = c(number1,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,3,4,5,6,7x 2o
                number = c(number1,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
    }
    else
    {
      if (age30 == 1800)
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2x 3,4,5,6,7o
                number = c(number1,number2)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,7x 3,4,5,6o
                number = c(number1,number2,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,6x 3,4,5,7
                number = c(number1,number2,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,6,7x 3,4,5o
                number = c(number1,number2,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,5x 3,4,6,7o
                number = c(number1,number2,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,5,7x 3,4,6o
                number = c(number1,number2,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,5,6x 3,4,7o
                number = c(number1,number2,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,5,6,7x 3,4o
                number = c(number1,number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,4x 3,5,6,7o
                number = c(number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,4,7x 3,5,6o
                number = c(number1,number2,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,6x 3,5,7o
                number = c(number1,number2,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #3,5o 1,2,5,6,7x
                number = c(number1,number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #3,6,7o 1,2,4,5x
                number = c(number1,number2,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #3,6o 1,2,4,5,7x
                number = c(number1,number2,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #3,7o 1,2,4,5,6x
                number = c(number1,number2,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #3o 1,2,4,5,6,7x
                number = c(number1,number2,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
      else
      {
        if (age40 == 2300)
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3x 4,5,6,7o
                number = c(number1,number2,number3)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,7x 4,5,6o
                number = c(number1,number2,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,6x 4,5,7o
                number = c(number1,number2,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,6,7x 4,5o
                number = c(number1,number2,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,5x 4,6,7o
                number = c(number1,number2,number3,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,5,7x 4,6o
                number = c(number1,number2,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,5,6x 4,7o
                number = c(number1,number2,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,5,6,7x 4o
                number = c(number1,number2,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
        else
        {
          if (age50 == 1900)
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,4x 5,6,7o
                number = c(number1,number2,number3,number4)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,7x 5,6o
                number = c(number1,number2,number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,6x 5,7o
                number = c(number1,number2,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,6,7x 5o
                number = c(number1,number2,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
          else
          {
            if (age60 == 600)
            {
              if (age70 == 200)
              {
                #1,2,3,4,5x 6,7o
                number = c(number1,number2,number3,number4,number5)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,5,7x 6o
                number = c(number1,number2,number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,5,6x 7o
                number = c(number1,number2,number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age
              }
              else
              {
                #1,2,3,4,5,6,7x
                number = c(number1,number2,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age
              }
            }
          }
        }
      }
    }
  }
}

##########################################가상 범죄자의 나이 생성 완료 후 저장 ####
write.csv(criminal,"criminal.csv")



###############################기존의 범죄자 성별 분석하기 ########################
crimeSexAndAge[32,1] = "남성"
crimeSexAndAge[33,1] = "여성"
crimeSexAndAge[31,2] = "2012"
crimeSexAndAge[31,3] = "2013"
crimeSexAndAge[31,4] = "2014"
crimeSexAndAge[31,5] = "2015"
crimeSexAndAge[31,6] = "2016"
crimeSexAndAge[31,7] = "Total"
crimeSexAndAge[31,8] = "Percentage"

for(j in 2:8)
{
  for(i in 3:8)
  {
    crimeSexAndAge[32,2] = as.integer(crimeSexAndAge[32,2]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 2:8)
{
  for(i in 14:19)
  {
    crimeSexAndAge[33,2] = as.integer(crimeSexAndAge[33,2]) + as.integer(crimeSexAndAge[i,j])
  }
}


for(j in 9:15)
{
  for(i in 3:8)
  {
    crimeSexAndAge[32,3] = as.integer(crimeSexAndAge[32,3]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 9:15)
{
  for(i in 14:19)
  {
    crimeSexAndAge[33,3] = as.integer(crimeSexAndAge[33,3]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 16:22)
{
  for(i in 3:8)
  {
    crimeSexAndAge[32,4] = as.integer(crimeSexAndAge[32,4]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 16:22)
{
  for(i in 14:19)
  {
    crimeSexAndAge[33,4] = as.integer(crimeSexAndAge[33,4]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 23:29)
{
  for(i in 3:8)
  {
    crimeSexAndAge[32,5] = as.integer(crimeSexAndAge[32,5]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 23:29)
{
  for(i in 14:19)
  {
    crimeSexAndAge[33,5] = as.integer(crimeSexAndAge[33,5]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 30:36)
{
  for(i in 3:8)
  {
    crimeSexAndAge[32,6] = as.integer(crimeSexAndAge[32,6]) + as.integer(crimeSexAndAge[i,j])
  }
}

for(j in 30:36)
{
  for(i in 14:19)
  {
    crimeSexAndAge[33,6] = as.integer(crimeSexAndAge[33,6]) + as.integer(crimeSexAndAge[i,j])
  }
}


for(j in 2:6)
{
  for(i in 32:33)
  {
    crimeSexAndAge[i,7] = as.integer(crimeSexAndAge[i,7]) + as.integer(crimeSexAndAge[i,j])
  }
}

crimeSexAndAge[32,8] = as.integer(crimeSexAndAge[32,7]) / sum(as.integer(crimeSexAndAge[32:33,7]))
crimeSexAndAge[33,8] = as.integer(crimeSexAndAge[33,7]) / sum(as.integer(crimeSexAndAge[32:33,7]))
#남자 84% 여자 16%

sex = 0
sexM = 0
sexW = 0

for(i in 1:10000)
{
  if(sex == 1)
  {
    sexM = sexM + 1
  }
  else
  {
    sexW = sexW + 1
  }
  
  if(sexM == 8400)
  {
    if(sexW == 1600)
    {
      print("Full")
    }
    else
    {
      #1,0
      number = c(0)
      sex = sample(number,1)
      criminal[i,2] = "Women"
    }
  }
  else
  {
    if(sexW == 1600)
    {
      number = c(1)
      sex = sample(number,1)
      criminal[i,2]= "Men"
    }
    else
    {
      number = c(0,1)
      sex = sample(number,1)
      criminal[i,2] = sex
      if(sex == 1)
      {
        criminal[i,2] = "Men"
      }
      else
      {
        criminal[i,2] = "Women"
      }
    }
  }
}

write.csv(crimeSexAndAge,"sexAndage.csv")
write.csv(criminal,"criminal.csv")

edu = 0
eduE = 0
eduM = 0
eduH = 0
eduU2 = 0
eduU4 = 0
eduG = 0

numbereduE = rep(1, times=9)
numbereduM = rep(2, times=13)
numbereduH = rep(3, times=54)
numbereduU2 = rep(4, times=6)
numbereduU4 = rep(5, times=15)
numbereduG = rep(6, times=2)


for(i in 1:10000)
{
  if(edu == 1)
  {
    eduE = eduE + 1
  }
  else if(edu == 2)
  {
    eduM = eduM + 1
  }
  else if(edu == 3)
  {
    eduH = eduH + 1
  }
  else if(edu == 4)
  {
    eduU2 = eduU2 + 1
  }
  else if(edu == 5)
  {
    eduU4 = eduU4 + 1
  }
  else if(edu == 6)
  {
    eduG = eduG + 1
  }
  else
  {
    
  }
  
  if(eduE == 900)
  {
    if(eduM == 1300)
    {
      if(eduH == 5400)
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #111111
              print("Full")
            }
            else
            {
              #111110
              number = c(numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #111101
              number = c(numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #111100
              number = c(numbereduG,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #111011
              number = c(numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #111010
              number = c(numbereduG,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #111001
              number = c(numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #111000
              number = c(numbereduG,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
      else
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #110111
              number = c(numbereduH)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #110110
              number = c(numbereduG,numbereduH)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #110101
              number = c(numbereduH,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #110100
              number = c(numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #110011
              number = c(numbereduH,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #110010
              number = c(numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #110001
              number = c(numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #110000
              number = c(numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
    }
    else
    {
      if(eduH == 5400)
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #101111
              number = c(numbereduM)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #101110
              number = c(numbereduM,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #101101
              number = c(numbereduM,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #101100
              number = c(numbereduM,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #101011
              number = c(numbereduM,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #101010
              number = c(numbereduM,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
             #101001
              number = c(numbereduM,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #101000
              number = c(numbereduM,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
      else
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #100111
              number = c(numbereduM,numbereduH)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #100110
              number = c(numbereduM,numbereduH,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #100101
              number = c(numbereduM,numbereduH,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #100100
              number = c(numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #100011
              number = c(numbereduM,numbereduH,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #100010
              number = c(numbereduM,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #100001
              number = c(numbereduM,numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #100000
              number = c(numbereduM,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
    }
  }
  else
  {
    if(eduM == 1300)
    {
      if(eduH == 5400)
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #011111
              number = c(numbereduE)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #011110
              number = c(numbereduE,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #011101
              number = c(numbereduE,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #011100
              number = c(numbereduE,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #011011
              number = c(numbereduE,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #011010
              number = c(numbereduE,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #011001
              number = c(numbereduE,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #011000
              number = c(numbereduE,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
      else
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #010111
              number = c(numbereduE,numbereduH)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #010110
              number = c(numbereduE,numbereduH,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #010101
              number = c(numbereduE,numbereduH,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #010100
              number = c(numbereduE,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #010011
              number = c(numbereduE,numbereduH,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #010010
              number = c(numbereduE,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #010001
              number = c(numbereduE,numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #010000
              number = c(numbereduE,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
    }
    else
    {
      if(eduH == 5400)
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #001111
              number = c(numbereduE,numbereduM)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #001110
              number = c(numbereduE,numbereduM,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #001101
              number = c(numbereduE,numbereduM,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #001100
              number = c(numbereduE,numbereduM,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #001011
              number = c(numbereduE, numbereduM,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #001010
              number = c(numbereduE, numbereduM,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #001001
              number = c(numbereduE, numbereduM,numbereduU2,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #001000
              number = c(numbereduE, numbereduM,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
      }
      else
      {
        if(eduU2 == 600)
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #000111
              number = c(numbereduE, numbereduM,numbereduH)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #000110
              number = c(numbereduE, numbereduM,numbereduH,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #000101
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #000100
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
        }
        else
        {
          if(eduU4 == 1500)
          {
            if(eduG == 200)
            {
              #000011
              number = c(numbereduE, numbereduM,numbereduH,numbereduU2)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #000010
              number = c(numbereduE, numbereduM,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
          }
          else
          {
            if(eduG == 200)
            {
              #000001
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
            }
            else
            {
              #000000
              number = c(numbereduE,numbereduM,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              if(edu == 1)
              {
                criminal[i,4] = "elementary"
              }
              else if(edu == 2)
              {
                criminal[i,4] = "middle"
              }
              else if(edu == 3)
              {
                criminal[i,4] = "High"
              }
              else if(edu == 4)
              {
                criminal[i,4] = "Univ2"
              }
              else if(edu == 5)
              {
                criminal[i,4] = "Univ4"
              }
              else
              {
                criminal[i,4] = "Graduate"
              }
              
            }
          }
        }
      }
    }
  }
}

write.csv(criminal,"criminal.csv")

#############################Money###################################
MoneyMarrigeParent = read.csv("MoneyMarrigeParent.csv",header=T,stringsAsFactors = F)

money = 0
moneyL = 0
moneyM = 0
moneyH = 0

for(i in 1:10000)
{
  if(money== 1)
  {
    moneyL = moneyL + 1
  }
  else if(money == 2)
  {
    moneyM = moneyM + 1
  }
  else
  {
    moneyH = moneyH + 1
  }
  
  if(moneyL == 6600)
  {
    if(moneyM == 3300)
    {
      if(moneyH == 100)
      {
        #111
        print("Full")
      }
      else
      {
        #110
        number = c(3)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "Low"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "Middle"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
    }
    else
    {
      if(moneyH == 100)
      {
        #101
        number = c(2)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
      else
      {
        #100
        number = c(2,3)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
    }
  }
  else
  {
    if(moneyM == 3300)
    {
      if(moneyH == 100)
      {
        #011
        number = c(1)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
      else
      {
        #010
        number = c(1,3)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
    }
    else
    {
      if(moneyH == 100)
      {
        #001
        number = c(1,2)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
      else
      {
        #000
        number = c(1,2,3)
        money = sample(number,1)
        criminal[i,3] = money
        if(criminal[i,3] == 1)
        {
          criminal[i,3] = "하"
        }
        else if(criminal[i,3] == 2)
        {
          criminal[i,3] = "중"
        }
        else
        {
          criminal[i,3] = "상"
        }
      }
    }
  }
}
write.csv(criminal,"criminal.csv")


marrige = 0
marrigeM = 0 #유배우자
marrigeC = 0 #동거 
marrigeD = 0 #이혼
marrigeB = 0 #사별

for(i in 10000)
{
  print("HO!!!")
}