setwd("D:/crime")

library(ggplot2)

criminal = read.csv("criminal.csv")
crimeAge = read.csv("crimeAge.csv")

for(i in 1:7)
{
  crimeAge[i,7] = sum(crimeAge[i,2:6])
}

for(i in 1:7)
{
  crimeAge[i,8] = round(crimeAge[i,7]/sum(crimeAge[1:7,7])*100, digits=0)
}

for(i in 1:7)
{
  crimeAge[i,9] = crimeAge[i,8]* 100
}

write.csv(crimeAge,"crimeAge.csv")

age10 = 0
age20 = 0
age30 = 0
age40 = 0
age50 = 0
age60 = 0
age70 = 0
for(i in 1:10000)
{
  if(age70 == 200)
  {
    if(age60 == 600)
    {
      if(age10 == 1600)
      {
        if(age20 == 1600)
        {
          if(age30 == 1800)
          {
            if(age50 == 1900)
            {
              criminal[i,1] = 4
            }
            else
            {
              criminal[i,1] = sample(4:5,1)
            }
          }
          else
          {
            criminal[i,1] = sample(3:5,1)
          }
        }
        else
        {
          criminal[i,1] = sample(2:5,1)
        }
      }
      else
      {
        criminal[i,1] = sample(1:5,1)
      }
    }
    else
    {
      criminal[i,1] = sample(1:6,1)
    }
    
  }
  else
  {
    criminal[i,1] = sample(1:7,1)
  }
  
  if(criminal[i,1] == 1)
  {
    age10 = age10 + 1
  }
  else if(criminal[i,1] == 2)
  {
    age20 = age20 + 1
  }
  else if(criminal[i,1] == 3)
  {
    age30 = age30 + 1
  }
  else if(criminal[i,1] == 4)
  {
    age40 = age40 + 1
  }
  else if(criminal[i,1] == 5)
  {
    age50 = age50 + 1
  }
  else if(criminal[i,1] == 6)
  {
    age60 = age60 + 1
  }
  else
  {
    age70 = age70 + 1
  }
}
for(i in 1:10000)
{
  criminal[i,1] = criminal[i,1] * 10
}
write.csv(criminal,"criminal.csv")
