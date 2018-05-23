setwd("D:/crime")

crimeSexAndAge = read.csv("sexAndage.csv",header=T,stringsAsFactors = F)
criminal = read.csv("criminal.csv",header=T,stringsAsFactors = F)
crimeday = read.csv("crimeday.csv",header=T,stringsAsFactors = F)
crimeTime = read.csv("crimeTime.csv",header=T,stringsAsFactors = F)
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
########################가HIgh범죄자 만들기?##########################################
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
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,5,7o 6x
                number = c(number6)
                age = sample(number,1)
                criminal[i,1] = age*10*10
              }
              else
              {
                #1,2,3,4,5 o 6,7x
                number = c(number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4,6o 5,7x
                number = c(number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,7o 5,6x
                number = c(number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4o 5,6,7x
                number = c(number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,5,6o 4,7x
                number = c(number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,5,7o 4,6x
                number = c(number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,5o 4,6,7x
                number = c(number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,6o 4,5,7x
                number = c(number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,7o 4,5,6x
                number = c(number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3o 4,5,6,7x
                number = c(number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,4,5,6o 3,7x
                number = c(number3,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,5,7o 3,6x
                number = c(number3,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,4,5o 3,6,7x
                number = c(number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,4,6o 3,5,7x
                number = c(number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,7o 3,5,6x
                number = c(number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,4o 3,5,6,7x
                number = c(number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,5,6o 3,4,7x
                number = c(number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,6o 3,4,5,7x
                number = c(number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,7o 3,4,5,6x
                number = c(number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2o 3,4,5,6,7x
                number = c(number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,5,6o 2,7x
                number = c(number2,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,5,7o  2,6x
                number = c(number2,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,5o 2,6,7x
                number = c(number2,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,6o 2,5,7x
                number = c(number2,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,7o 2,5,6x
                number = c(number2,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4o 2,5,6,7x
                number = c(number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,5,6o 2,4,7x
                number = c(number2,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,5,7o 2,4,6x
                number = c(number2,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,5o 2,4,6,7x
                number = c(number2,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,6o 2,4,5,7x
                number = c(number2,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,7o 2,4,5,6x
                number = c(number2,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3o 2,4,5,6,7x
                number = c(number2,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,5,6o 2,3,7x
                number = c(number2,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,5,7o 2,3,6x
                number = c(number2,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,5o 2,3,6,7x
                number = c(number2,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,6o 2,3,5,7x
                number = c(number2,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,7o 2,3,5,6x
                number = c(number2,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,4o 2,3,5,6,7x
                number = c(number2,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,5,6o 2,3,4,7x
                number = c(number2,number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,5,7o 2,3,4,6x
                number = c(number2,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,5o 2,3,4,6,7x
                number = c(number2,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,6o 2,3,4,5,7x
                number = c(number,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,7o 2,3,4,5,6x
                number = c(number2,number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1o 2,3,4,5,6x
                number = c(number2,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,7x 2,3,4,5,6o
                number = c(number1,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,6x 2,3,4,5,7o
                number = c(number1,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,6,7x 2,3,4,5o
                number = c(number1,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,5,7x 2,3,4,6o
                number = c(number1,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,5,6x 2,3,4,7
                number = c(number1,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,5,6,7x 2,3,4o
                number = c(number1,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,7x 2,3,5,6o
                number = c(number1,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,6x 2,3,5,7o
                number = c(number1,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,6,7x 2,3,5o
                number = c(number1,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,5,7x 2,3,6o
                number = c(number1,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,4,5,6x 2,37o
                number = c(number1,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,4,5,6,7x 2,3o
                number = c(number1,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,7x 2,4,5,6o
                number = c(number1,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,6x 2,4,5,7o
                number = c(number1,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,6,7x 2,4,5o
                number = c(number1,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,5,7x 2,4,6o
                number = c(number1,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,5,6x 2,4,7o
                number = c(number1,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,5,6,7x 2,4o
                number = c(number1,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,7x 2,5,6o
                number = c(number1,number3,number4,number7)
                age =sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,6x 2,5,7o
                number = c(number1,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,6,7x 2,5o
                number = c(number1,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,5,7x 2,6o
                number = c(number1,number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,3,4,5,6x 2,7o
                number = c(number1,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,3,4,5,6,7x 2o
                number = c(number1,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,7x 3,4,5,6o
                number = c(number1,number2,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,6x 3,4,5,7
                number = c(number1,number2,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,6,7x 3,4,5o
                number = c(number1,number2,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,5,7x 3,4,6o
                number = c(number1,number2,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,5,6x 3,4,7o
                number = c(number1,number2,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,5,6,7x 3,4o
                number = c(number1,number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,4,7x 3,5,6o
                number = c(number1,number2,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,4,6x 3,5,7o
                number = c(number1,number2,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #3,5o 1,2,5,6,7x
                number = c(number1,number2,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #3,6o 1,2,4,5,7x
                number = c(number1,number2,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #3,7o 1,2,4,5,6x
                number = c(number1,number2,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #3o 1,2,4,5,6,7x
                number = c(number1,number2,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,7x 4,5,6o
                number = c(number1,number2,number3,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,6x 4,5,7o
                number = c(number1,number2,number3,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,6,7x 4,5o
                number = c(number1,number2,number3,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,5,7x 4,6o
                number = c(number1,number2,number3,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,5,6x 4,7o
                number = c(number1,number2,number3,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,5,6,7x 4o
                number = c(number1,number2,number3,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4,7x 5,6o
                number = c(number1,number2,number3,number4,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,6x 5,7o
                number = c(number1,number2,number3,number4,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4,6,7x 5o
                number = c(number1,number2,number3,number4,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
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
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4,5,7x 6o
                number = c(number1,number2,number3,number4,number5,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
            else
            {
              if (age70 == 200)
              {
                #1,2,3,4,5,6x 7o
                number = c(number1,number2,number3,number4,number5,number6)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
              else
              {
                #1,2,3,4,5,6,7x
                number = c(number1,number2,number3,number4,number5,number6,number7)
                age = sample(number,1)
                criminal[i,1] = age*10
              }
            }
          }
        }
      }
    }
  }
}

##########################################가HIgh 범죄자의 나이 생성 완료 후 저장 ####
write.csv(criminal,"criminal.csv")



###############################기존의 범죄자 성별 분석Low기 ########################
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
      criminal[i,2] = sex
    }
  }
  else
  {
    if(sexW == 1600)
    {
      number = c(1)
      sex = sample(number,1)
      criminal[i,2]= sex
    }
    else
    {
      number = c(0,1)
      sex = sample(number,1)
      criminal[i,2] = sex
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
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #111101
              number = c(numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #111100
              number = c(numbereduG,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #111010
              number = c(numbereduG,numbereduU2)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #111001
              number = c(numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #111000
              number = c(numbereduG,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #110110
              number = c(numbereduG,numbereduH)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #110101
              number = c(numbereduH,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #110100
              number = c(numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #110010
              number = c(numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #110001
              number = c(numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #110000
              number = c(numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #101110
              number = c(numbereduM,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #101101
              number = c(numbereduM,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #101100
              number = c(numbereduM,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #101010
              number = c(numbereduM,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #100110
              number = c(numbereduM,numbereduH,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #100101
              number = c(numbereduM,numbereduH,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #100100
              number = c(numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #100010
              number = c(numbereduM,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #100001
              number = c(numbereduM,numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #100000
              number = c(numbereduM,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #011110
              number = c(numbereduE,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #011101
              number = c(numbereduE,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #011100
              number = c(numbereduE,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #011010
              number = c(numbereduE,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #011001
              number = c(numbereduE,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #011000
              number = c(numbereduE,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #010110
              number = c(numbereduE,numbereduH,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #010101
              number = c(numbereduE,numbereduH,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #010100
              number = c(numbereduE,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #010010
              number = c(numbereduE,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #010001
              number = c(numbereduE,numbereduH,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #010000
              number = c(numbereduE,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #001110
              number = c(numbereduE,numbereduM,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #001101
              number = c(numbereduE,numbereduM,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #001100
              number = c(numbereduE,numbereduM,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #001010
              number = c(numbereduE, numbereduM,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #001001
              number = c(numbereduE, numbereduM,numbereduU2,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #001000
              number = c(numbereduE, numbereduM,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #000110
              number = c(numbereduE, numbereduM,numbereduH,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #000101
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #000100
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
              criminal[i,4] = edu
            }
            else
            {
              #000010
              number = c(numbereduE, numbereduM,numbereduH,numbereduU2,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
          }
          else
          {
            if(eduG == 200)
            {
              #000001
              number = c(numbereduE, numbereduM,numbereduH,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
            }
            else
            {
              #000000
              number = c(numbereduE,numbereduM,numbereduH,numbereduU2,numbereduU4,numbereduG)
              edu = sample(number,1)
              criminal[i,4] = edu
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
      }
      else
      {
        #100
        number = c(2,3)
        money = sample(number,1)
        criminal[i,3] = money
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
      }
      else
      {
        #010
        number = c(1,3)
        money = sample(number,1)
        criminal[i,3] = money
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
      }
      else
      {
        #000
        number = c(1,2,3)
        money = sample(number,1)
        criminal[i,3] = money
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

for(i in 1:10000)
{
  if(marrige == 1)
  {
    marrigeM = marrigeM + 1
  }
  else if(marrige == 2)
  {
    marrigeC = marrigeC + 1
  }
  else if(marrige == 3)
  {
    marrigeD = marrigeD + 1
  }
  else
  {
    marrigeB = marrigeB + 1
  }
  
  if(marrigeM == 7300)
  {
    if(marrigeC == 500)
    {
      if(marrigeD == 1800)
      {
        if(marrigeB == 400)
        {
          #1111
          print("Full")
        }
        else
        {
          #1110
          number = c(4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
      else
      {
        if(marrigeB == 400)
        {
          #1101
          number = c(3)
          marrige = sample(number,1)
          criminal[i,6] = marrige
        }
        else
        {
          #1100
          number = c(3,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
    }
    else
    {
      if(marrigeD == 1800)
      {
        if(marrigeB == 400)
        {
          #1011
          number = c(2)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #1010
          number = c(2,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
      else
      {
        if(marrigeB == 400)
        {
          #1001
          number = c(2,3)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #1000
          number = c(2,3,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
    }
  }
  else
  {
    if(marrigeC == 500)
    {
      if(marrigeD == 1800)
      {
        if(marrigeB == 400)
        {
          #0111
          number = c(1)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #0110
          number = c(1,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
      else
      {
        if(marrigeB == 400)
        {
          #0101
          number = c(1,3)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #0100
          number = c(1,3,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige
        }
      }
    }
    else
    {
      if(marrigeD == 1800)
      {
        if(marrigeB == 400)
        {
          #0011
          number = c(1,2)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #0010
          number = c(1,2,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
      else
      {
        if(marrigeB == 400)
        {
          #0001
          number = c(1,2,3)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
        else
        {
          #0000
          number = c(1,2,3,4)
          marrige = sample(number,1)
          criminal[i,6] = marrige 
        }
      }
    }
  }
}
write.csv(criminal,"criminal.csv")

parents = 0
parentsB = 0 #both
parentsF = 0 #only father 
parentsM= 0 #only mather
parentsX = 0 #no one
for(i in 1:10000)
{
  if(parents == 1)
  {
    parentsB = parentsB + 1
  }
  else if(parents == 2)
  {
    parentsF = parentsF + 1
  }
  else if(parents == 3)
  {
    parentsM = parentsM + 1
  }
  else
  {
    parentsX = parentsX + 1
  }
  
  if(parentsB == 7200)
  {
    if(parentsF == 700)
    {
      if(parentsM == 1200)
      {
        if(parentsX == 900)
        {
          #1111
          print("Full")
        }
        else
        {
          #1110
          number = c(4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
      else
      {
        if(parentsX == 900)
        {
          #1101
          number = c(3)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #1100
          number = c(3,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
    }
    else
    {
      if(parentsM == 1200)
      {
        if(parentsX == 900)
        {
          #1011
          number = c(2)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #1010
          number = c(2,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
      else
      {
        if(parentsX == 900)
        {
          #1001
          number = c(2,3)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #1000
          number = c(2,3,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
    }
  }
  else
  {
    if(parentsF == 700)
    {
      if(parentsM == 1200)
      {
        if(parentsX == 900)
        {
          #0111
          number = c(1)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #0110
          number = c(1,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
      else
      {
        if(parentsX == 900)
        {
          #0101
          number = c(1,3)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #0100
          number = c(1,3,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
    }
    else
    {
      if(parentsM == 1200)
      {
        if(parentsX == 900)
        {
          #0011
          number = c(1,2)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #0010
          number = c(1,2,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
      else
      {
        if(parentsX == 900)
        {
          #0001
          number = c(1,2,3)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
        else
        {
          #0000
          number = c(1,2,3,4)
          parents = sample(number,1)
          criminal[i,5] = parents
        }
      }
    }
  }
}
write.csv(criminal,"criminal.csv")
#####################################day######################################################
day = 0
day1 = 0
day2 = 0
day3 = 0
day4 = 0
day5 = 0
day6 = 0
day7 = 0

for(i in 1:10000)
{
  if(day == 1)
  {
    day1 = day1 + 1
  }
  else if(day == 2)
  {
    day2 = day2 + 1
  }
  else if(day == 3)
  {
    day3 = day3 + 1
  }
  else if(day == 4)
  {
    day4 = day4 + 1
  }
  else if(day == 5)
  {
    day5 = day5 + 1
  }
  else if(day == 6)
  {
    day6 = day6 + 1
  }
  else
  {
    day7 = day7 + 1
  }
  
  if(day1 == 1300)
  {
    if(day2 == 1400)
    {
      if(day3 == 1400)
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1111111
                print("Full")
              }
              else
              {
                #1111110
                number = c(7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1111101
                number = c(6)
                day = sample(number,1)
                criminal[i,8] = day
                
              }
              else
              {
                #1111100
                number = c(6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1111011
                number = c(5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1111010
                number = c(5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1111001
                number = c(5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1111000
                number = c(5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1110111
                number = c(4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1110110
                number = c(4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1110101
                number = c(4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1110100
                number = c(4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1110011
                number = c(4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1110010
                number = c(4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1110001
                number = c(4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1110000
                number = c(4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
      else
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1101111
                number = c(3)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1101110
                number = c(3,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1101101
                number = c(3,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1101100
                number = c(3,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1101011
                number = c(3,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1101010
                number = c(3,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1101001
                number = c(3,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1101000
                number = c(3,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1100111
                number = c(3,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1100110
                number = c(3,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1100101
                number = c(3,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1100100
                number = c(3,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1100011
                number = c(3,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1100010
                number = c(3,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1100001
                number = c(3,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1100000
                number = c(3,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
    }
    else
    {
      if(day3 == 1400)
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1011111
                number = c(2)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1011110
                number = c(2,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1011101
                number = c(2,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1011100
                number = c(2,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1011011
                number = c(2,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1011010
                number = c(2,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1011001
                number = c(2,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1011000
                number = c(2,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1010111
                number = c(2,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1010110
                number = c(2,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1010101
                number = c(2,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1010100
                number = c(2,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1010011
                number = c(2,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1010010
                number = c(2,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1010001
                number = c(2,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1010000
                number = c(2,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
      else
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1001111
                number = c(2,3)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1001110
                number = c(2,3,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1001101
                number = c(2,3,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1001100
                number = c(2,3,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1001011
                number = c(2,3,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1001010
                number = c(2,3,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1001001
                number = c(2,3,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1001000
                number = c(2,3,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1000111
                number = c(2,3,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1000110
                number = c(2,3,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1000101
                number = c(2,3,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1000100
                number = c(2,3,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #1000011
                number = c(2,3,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1000010
                number = c(2,3,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #1000001
                number = c(2,3,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #1000000
                number = c(2,3,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
    }
  }
  else
  {
    if(day2 == 1400)
    {
      if(day3 == 1400)
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0111111
                number = c(1)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0111110
                number = c(1,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0111101
                number = c(1,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0111100
                number = c(1,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0111011
                number = c(1,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0111010
                number = c(1,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0111001
                number = c(1,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0111000
                number = c(1,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0110111
                number = c(1,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0110110
                number = c(1,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0110101
                number = c(1,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0110100
                number = c(1,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0110011
                number = c(1,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0110010
                number = c(1,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0110001
                number = c(1,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0110000
                number = c(1,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
      else
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0101111
                number = c(1,3)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0101110
                number = c(1,3,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0101101
                number = c(1,3,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0101100
                number = c(1,3,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0101011
                number = c(1,3,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0101010
                number = c(1,3,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0101001
                number = c(1,3,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0101000
                number = c(1,3,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0100111
                number = c(1,3,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0100110
                number = c(1,3,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0100101
                number = c(1,3,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0100100
                number = c(1,3,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0100011
                number = c(1,3,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0100010
                number = c(1,3,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0100001
                number = c(1,3,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0100000
                number = c(1,3,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
    }
    else
    {
      if(day3 == 1400)
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0011111
                number = c(1,2)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0011110
                number = c(1,2,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0011101
                number = c(1,2,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0011100
                number = c(1,2,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0011011
                number = c(1,2,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0011010 
                number = c(1,2,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0011001
                number = c(1,2,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0011000
                number = c(1,2,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0010111
                number = c(1,2,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0010110
                number = c(1,2,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0010101
                number = c(1,2,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0010100
                number = c(1,2,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0010011
                number = c(1,2,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0010010
                number = c(1,2,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0010001
                number = c(1,2,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0010000
                number = c(1,2,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
      else
      {
        if(day4 == 1400)
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0001111
                number = c(1,2,3)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0001110
                number = c(1,2,3,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0001101
                number = c(1,2,3,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0001100
                number = c(1,2,3,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0001011
                number = c(1,2,3,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0001010
                number = c(1,2,3,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0001001
                number = c(1,2,3,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0001000
                number = c(1,2,3,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
        else
        {
          if(day5 == 1500)
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0000111
                number = c(1,2,3,4)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0000110
                number = c(1,2,3,4,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0000101
                number = c(1,2,3,4,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0000100
                number = c(1,2,3,4,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
          else
          {
            if(day6 == 1600)
            {
              if(day7 == 1400)
              {
                #0000011
                number = c(1,2,3,4,5)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0000010
                number = c(1,2,3,4,5,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
            else
            {
              if(day7 == 1400)
              {
                #0000001
                number = c(1,2,3,4,5,6)
                day = sample(number,1)
                criminal[i,8] = day
              }
              else
              {
                #0000000
                number = c(1,2,3,4,5,6,7)
                day = sample(number,1)
                criminal[i,8] = day
              }
            }
          }
        }
      }
    }
  }
}

write.csv(criminal,"criminal.csv")
######################################Time########################################3

time = 0
time1 = 0 #0~2:59
time2 = 0 #3~5:59
time3 = 0 #6~8:59
time4 = 0 #9~11:59
time5 = 0 #12~14:59
time6 = 0 #15~17:59
time7 = 0 #18:00~20:59
time8 = 0 #21:00~23:59

for(i in 1:10000)
{
  if(time == 1)
  {
    time1 = time1 + 1
  }
  else if(time == 2)
  {
    time2 = time2 + 1
  }
  else if(time == 3)
  {
    time3 = time3 + 1
  }
  else if(time == 4)
  {
    time4 = time4 + 1
  }
  else if(time == 5)
  {
    time5 = time5 + 1
  }
  else if(time == 6)
  {
    time6 = time6 + 1
  }
  else if(time == 7)
  {
    time7 = time7 + 1
  }
  else
  {
    time8 = time8 + 1
  }
  
  if(time1 == 1200)
  {
    if(time2 == 1100)
    {
      if(time3 == 700)
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11111111
                  print("Full")
                }
                else
                {
                  #11111110
                  number = c(8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11111101
                  number = c(7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11111100
                  number = c(7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11111011
                  number = c(6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11111010
                  number = c(6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11111001
                  number = c(6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11111000
                  number = c(6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11110111
                  number = c(5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11110110
                  number = c(5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11110101
                  number = c(5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11110100
                  number = c(5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11110011
                  number = c(5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11110010
                  number = c(5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11110001
                  number = c(5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11110000
                  number = c(5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11101111
                  number = c(4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11101110
                  number = c(4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11101101
                  number = c(4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11101100
                  number = c(4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11101011
                  number = c(4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11101010
                  number = c(4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11101001
                  number = c(4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11101000
                  number = c(4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11100111
                  number = c(4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11100110
                  number = c(4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11100101 
                  number = c(4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11100100
                  number = c(4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11100011
                  number = c(4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11100010
                  number = c(4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11100001
                  number = c(4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11100000
                  number = c(4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
      else
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11011111
                  number = c(3)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11011110
                  number = c(3,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11011101
                  number = c(3,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11011100
                  number = c(3,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11011011
                  number = c(3,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11011010
                  number = c(3,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11011001
                  number = c(3,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11011000
                  number = c(3,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11010111
                  number = c(3,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11010110
                  number = c(3,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11010101
                  number = c(3,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11010100
                  number = c(3,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11010011
                  number = c(3,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11010010
                  number = c(3,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11010001
                  number = c(3,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #1101000
                  number = c(3,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11001111
                  number = c(3,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11001110
                  number = c(3,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11001101
                  number = c(3,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11001100
                  number = c(3,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11001011
                  number = c(3,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11001010
                  number = c(3,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11001001
                  number = c(3,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11001000
                  number = c(3,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11000111
                  number = c(3,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11000110
                  number = c(3,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11000101
                  number = c(3,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11000100
                  number = c(3,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #11000011
                  number = c(3,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11000010
                  number = c(3,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #11000001
                  number = c(3,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #11000000
                  number = c(3,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
    }
    else
    {
      if(time3 == 700)
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10111111
                  number = c(2)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10111110
                  number = c(2,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10111101
                  number = c(2,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10111100
                  number = c(2,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10111011
                  number = c(2,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10111010
                  number = c(2,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10111001
                  number = c(2,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10111000
                  number = c(2,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10110111
                  number = c(2,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10110110
                  number = c(2,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10110101
                  number = c(2,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10110100
                  number = c(2,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10110011
                  number = c(2,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10110010
                  number = c(2,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10110001
                  number = c(2,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10110000
                  number = c(2,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10101111
                  number = c(2,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10101110
                  number = c(2,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10101101
                  number = c(2,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10101100
                  number = c(2,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10101011
                  number = c(2,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10101010
                  number = c(2,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10101001
                  number = c(2,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10101000 
                  number = c(2,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10100111
                  number = c(2,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10100110
                  number = c(2,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10100101
                  number = c(2,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10100100
                  number = c(2,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10100011
                  number = c(2,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10100010
                  number = c(2,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10100001
                  number = c(2,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10100000
                  number = c(2,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
      else
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10011111
                  number = c(2,3)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10011110
                  number = c(2,3,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10011101
                  number = c(2,3,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10011100
                  number = c(2,3,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10011011
                  number = c(2,3,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10011010
                  number = c(2,3,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10011001
                  number = c(2,3,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10011000
                  number = c(2,3,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10010111
                  number = c(2,3,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10010110
                  number = c(2,3,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10010101
                  number = c(2,3,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10010100
                  number = c(2,3,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10010011
                  number = c(2,3,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10010010
                  number = c(2,3,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10010001
                  number = c(2,3,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10010000
                  number = c(2,3,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10001111
                  number = c(2,3,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10001110
                  number = c(2,3,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10001101
                  number = c(2,3,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10001100
                  number = c(2,3,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10001011
                  number = c(2,3,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10001010
                  number = c(2,3,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10001001
                  number = c(2,3,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10001000
                  number = c(2,3,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10000111
                  number = c(2,3,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10000110
                  number = c(2,3,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10000101
                  number = c(2,3,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10000100
                  number = c(2,3,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #10000011
                  number = c(2,3,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10000010
                  number = c(2,3,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #10000001
                  number = c(2,3,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #10000000
                  number = c(2,3,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
    }
  }
  else
  {
    if(time2 == 1100)
    {
      if(time3 == 700)
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01111111
                  number = c(1)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01111110
                  number = c(1,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01111101
                  number = c(1,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01111100
                  number = c(1,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01111011
                  number = c(1,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01111010
                  number = c(1,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01111001
                  number = c(1,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01111000
                  number = c(1,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01110111
                  number = c(1,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01110110
                  number = c(1,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01110101
                  number = c(1,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01110100
                  number = c(1,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01110011
                  number = c(1,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01110010
                  number = c(1,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01110001
                  number = c(1,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01110000
                  number = c(1,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01101111
                  number = c(1,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                 #01101110 
                  number = c(1,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01101101
                  number = c(1,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01101100
                  number = c(1,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01101011
                  number = c(1,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01101010
                  number = c(1,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01101001
                  number = c(1,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01101000
                  number = c(1,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01100111
                  number = c(1,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01100110
                  number = c(1,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01100101
                  number = c(1,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01100100
                  number = c(1,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01100011
                  number = c(1,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01100010
                  number = c(1,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01100001
                  number = c(1,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01100000
                  number = c(1,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
      else
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01011111
                  number = c(1,3)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01011110
                  number = c(1,3,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01011101
                  number = c(1,3,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01011100
                  number = c(1,3,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01011011
                  number = c(1,3,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01011010
                  number = c(1,3,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01011001
                  number = c(1,3,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01011000
                  number = c(1,3,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01010111
                  number = c(1,3,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01010110
                  number = c(1,3,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01010101
                  number = c(1,3,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01010100
                  number = c(1,3,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01010011
                  number = c(1,3,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01010010
                  number = c(1,3,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01010001
                  number = c(1,3,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01010000
                  number = c(1,3,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01001111
                  number = c(1,3,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01001110
                  number = c(1,3,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01001101
                  number = c(1,3,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01001100
                  number = c(1,3,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01001011
                  number = c(1,3,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01001010
                  number = c(1,3,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01001001
                  number = c(1,3,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01001000
                  number = c(1,3,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01000111
                  number = c(1,3,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01000110
                  number = c(1,3,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01000101
                  number = c(1,3,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01000100
                  number = c(1,3,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #01000011
                  number = c(1,3,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01000010
                  number = c(1,3,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #01000001
                  number = c(1,3,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #01000000
                  number = c(1,3,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
    }
    else
    {
      if(time3 == 700)
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00111111
                  number = c(1,2)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00111110
                  number = c(1,2,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00111101
                  number = c(1,2,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00111100
                  number = c(1,2,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00111011
                  number = c(1,2,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00111010
                  number = c(1,2,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00111001
                  number = c(1,2,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00111000
                  number = c(1,2,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00110111
                  number = c(1,2,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00110110
                  number = c(1,2,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00110101
                  number = c(1,2,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00110100
                  number = c(1,2,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00110011
                  number = c(1,2,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00110010
                  number = c(1,2,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00110001
                  number = c(1,2,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00110000
                  number = c(1,2,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00101111
                  number = c(1,2,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00101110
                  number = c(1,2,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00101101
                  number = c(1,2,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00101100
                  number = c(1,2,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00101011
                  number = c(1,2,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00101010
                  number = c(1,2,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00101001
                  number = c(1,2,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00101000
                  number = c(1,2,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00100111
                  number = c(1,2,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00100110
                  number = c(1,2,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00100101
                  number = c(1,2,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00100100
                  number = c(1,2,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00100011
                  number = c(1,2,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00100010
                  number = c(1,2,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00100001
                  number = c(1,2,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00100000
                  number = c(1,2,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
      else
      {
        if(time4 == 1000)
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00011111
                  number = c(1,2,3)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00011110
                  number = c(1,2,3,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00011101
                  number = c(1,2,3,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00011100
                  number = c(1,2,3,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00011011
                  number = c(1,2,3,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00011010
                  number = c(1,2,3,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00011001
                  number = c(1,2,3,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00011000
                  number = c(1,2,3,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00010111
                  number = c(1,2,3,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00010110
                  number = c(1,2,3,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00010101
                  number = c(1,2,3,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00010100
                  number = c(1,2,3,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00010011
                  number = c(1,2,3,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00010010
                  number = c(1,2,3,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00010001
                  number = c(1,2,3,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00010000
                  number = c(1,2,3,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
        else
        {
          if(time5 == 1200)
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00001111
                  number = c(1,2,3,4)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00001110
                  number = c(1,2,3,4,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00001101
                  number = c(1,2,3,4,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00001100
                  number = c(1,2,3,4,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00001011
                  number = c(1,2,3,4,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00001010
                  number = c(1,2,3,4,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00001001
                  number = c(1,2,3,4,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00001000
                  number = c(1,2,3,4,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
          else
          {
            if(time6 == 1300)
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00000111
                  number = c(1,2,3,4,5)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00000110
                  number = c(1,2,3,4,5,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00000101
                  number = c(1,2,3,4,5,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00000100
                  number = c(1,2,3,4,5,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
            else
            {
              if(time7 == 1600)
              {
                if(time8 == 1900)
                {
                  #00000011
                  number = c(1,2,3,4,5,6)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00000010
                  number = c(1,2,3,4,5,6,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
              else
              {
                if(time8 == 1900)
                {
                  #00000001
                  number = c(1,2,3,4,5,6,7)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
                else
                {
                  #00000000
                  number = c(1,2,3,4,5,6,7,8)
                  time = sample(number,1)
                  criminal[i,9] = time
                }
              }
            }
          }
        }
      }
    }
  }
}
write.csv(criminal,"criminal.csv")
