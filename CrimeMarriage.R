PreCrimeMarriage = read.csv("PreCrimeMarriage.csv")
DBCrimeMarriage = read.csv("DBCrimeMarriage.csv")


#2012 Crime sum Data
BM2012=0
SM2012=0
for(i in 2:6){
  
   BM2012 = PreCrimeMarriage[i,2] + BM2012
   SM2012 = PreCrimeMarriage[i,3] + SM2012

}
DBCrimeMarriage[1,2] = BM2012
DBCrimeMarriage[2,2] = SM2012

#2013 Crime sum Data
BM2013=0
SM2013=0
for(i in 2:6){
  
  BM2013 = PreCrimeMarriage[i,4] + BM2013
  SM2013 = PreCrimeMarriage[i,5] + SM2013
  
}
DBCrimeMarriage[1,3] = BM2013
DBCrimeMarriage[2,3] = SM2013

#2014 Crime sum Data
BM2014=0
SM2014=0
for(i in 2:6){
  
  BM2014 = PreCrimeMarriage[i,6] + BM2014
  SM2014 = PreCrimeMarriage[i,7] + SM2014

}
DBCrimeMarriage[1,4] = BM2014
DBCrimeMarriage[2,4] = SM2014

#2015 Crime sum Data
BM2015=0
SM2015=0
for(i in 2:6){
  
  BM2015 = PreCrimeMarriage[i,8] + BM2015
  SM2015 = PreCrimeMarriage[i,9] + SM2015
  
}
DBCrimeMarriage[1,5] = BM2015
DBCrimeMarriage[2,5] = SM2015

#2016 Crime sum Data
BM2016=0
SM2016=0
for(i in 2:6){
  
  BM2016 = PreCrimeMarriage[i,10] + BM2016
  SM2016 = PreCrimeMarriage[i,11] + SM2016
  
}
DBCrimeMarriage[1,6] = BM2016
DBCrimeMarriage[2,6] = SM2016

#SM,BM Total input
BMTotal = 0
SMTotal = 0
for(i in 2:6){
  BMTotal = DBCrimeMarriage[1,i] + BMTotal
  SMTotal = DBCrimeMarriage[2,i] + SMTotal
}
DBCrimeMarriage[1,7] = BMTotal
DBCrimeMarriage[2,7] = SMTotal

#Total/AllTotal Percentage input
AllTotal = BMTotal + SMTotal
DBCrimeMarriage[1,8]=BMTotal/AllTotal
DBCrimeMarriage[2,8]=SMTotal/AllTotal

write.csv(DBCrimeMarriage,"CrimeMarriage.csv")
