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
  crimeAge[i,8] = crimeAge[i,7]/sum(crimeAge[1:7,7])
}

for(i in 1:7)
{
  crimeAge[i,9] = crimeAge[i,8]* 100
}

for(i in 101:200)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 201:300)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 301:400)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 401:500)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 501:600)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 601:700)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 701:800)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 801:900)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 901:1000)
{
  criminal[i,1] = criminal[i-100,1]
}
for(i in 1001:2000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 2001:3000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 3001:4000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 4001:5000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 5001:6000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 6001:7000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 7001:8000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 8001:9000)
{
  criminal[i,1] = criminal[i-1000,1]
}
for(i in 9001:10000)
{
  criminal[i,1] = criminal[i-1000,1]
}

write.csv(criminal,"criminal.csv")

