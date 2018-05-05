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

for(i in 1:84)
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
  
  if (age10 == 16)
  {
    if (age20 == 16)
    {
      if (age30 == 18)
      {
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
      if (age30 == 18)
      {
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
    if (age20 == 16)
    {
      if (age30 == 18)
      {
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
      if (age30 == 18)
      {
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
        if (age40 == 23)
        {
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
          if (age50 == 19)
          {
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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
            if (age60 == 6)
            {
              if (age70 == 2)
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
              if (age70 == 2)
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

