PreCrimeIncome = read.csv("PreCrimeIncome.csv")
DBCrimeIncome = read.csv("DBCrimeIncome.csv")

#2012 Data sum
B2012=0
M2012=0
T2012=0
for(i in 1:6){
  
  B2012=sum(PreCrimeIncome[i,2]) + B2012
  M2012=sum(PreCrimeIncome[i,3]) + M2012
  T2012=sum(PreCrimeIncome[i,4]) + T2012
}

#2013 Data sum
B2013=0
M2013=0
T2013=0
for(i in 1:6){
  B2013=sum(PreCrimeIncome[i,5]) + B2013
  M2013=sum(PreCrimeIncome[i,6]) + M2013
  T2013=sum(PreCrimeIncome[i,7]) + T2013
}

#2014 Data sum
B2014=0
M2014=0
T2014=0
for(i in 1:6){
  B2014=sum(PreCrimeIncome[i,8]) + B2014
  M2014=sum(PreCrimeIncome[i,9]) + M2014
  T2014=sum(PreCrimeIncome[i,10]) + T2014
}

#2015 Data sum
B2015=0
M2015=0
T2015=0
for(i in 1:6){
  B2015=sum(PreCrimeIncome[i,11]) + B2015
  M2015=sum(PreCrimeIncome[i,12]) + M2015
  T2015=sum(PreCrimeIncome[i,13]) + T2015
}

#2016 Data sum
B2016=0
M2016=0
T2016=0
for(i in 1:6){
  B2016=sum(PreCrimeIncome[i,14]) + B2016
  M2016=sum(PreCrimeIncome[i,15]) + M2016
  T2016=sum(PreCrimeIncome[i,16]) + T2016
}

#2012 Data input
DBCrimeIncome[1,2] = B2012
DBCrimeIncome[2,2] = M2012
DBCrimeIncome[3,2] = T2012

#2013 Data input
DBCrimeIncome[1,3] = B2013
DBCrimeIncome[2,3] = M2013
DBCrimeIncome[3,3] = T2013

#2012 Data input
DBCrimeIncome[1,4] = B2014
DBCrimeIncome[2,4] = M2014
DBCrimeIncome[3,4] = T2014

#2012 Data input
DBCrimeIncome[1,5] = B2015
DBCrimeIncome[2,5] = M2015
DBCrimeIncome[3,5] = T2015

#2012 Data input
DBCrimeIncome[1,6] = B2016
DBCrimeIncome[2,6] = M2016
DBCrimeIncome[3,6] = T2016

TOP = 0
Middle = 0
Bottom = 0
#CrimeIncome Total
for(i in 2:6){
  TOP = DBCrimeIncome[1,i] + TOP
}
DBCrimeIncome[1,7] = TOP

for(i in 2:6){
  Middle = DBCrimeIncome[2,i] + Middle
}
DBCrimeIncome[2,7] = Middle

for(i in 2:6){
  Bottom = DBCrimeIncome[3,i] + Bottom
}
DBCrimeIncome[3,7] = Bottom

#ALL TOTAL
TOTAL = TOP + Middle + Bottom

#Percentage
DBCrimeIncome[1,8] = TOP/TOTAL
DBCrimeIncome[2,8] = Middle/TOTAL
DBCrimeIncome[3,8] = Bottom/TOTAL

write.csv(DBCrimeIncome,"CrimeIncome.csv")
