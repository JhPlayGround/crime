PreCrimeRecord = read.csv("PreCrimeRecord.csv")
DBCrimeRecord = read.csv("DBCrimeRecord.csv")

#CrimeRecord 2012 Data sum
CrimeRecord2012No = 0
CrimeRecord2012Yes = 0

for(i in 1:6){
  
  CrimeRecord2012No = PreCrimeRecord[i,2] + CrimeRecord2012No

}
for(i in 3:11){
  
  for(y in 1:6){
  
    CrimeRecord2012Yes = PreCrimeRecord[y,i] + CrimeRecord2012Yes
  
    }
}

DBCrimeRecord[1,2] = CrimeRecord2012Yes
DBCrimeRecord[2,2] = CrimeRecord2012No

#CrimeRecord 2013 Data sum
CrimeRecord2013No = 0
CrimeRecord2013Yes = 0

for(i in 1:6){
  
  CrimeRecord2013No = PreCrimeRecord[i,12] + CrimeRecord2013No
  
}
for(i in 13:21){
  
  for(y in 1:6){
    
    CrimeRecord2013Yes = PreCrimeRecord[y,i] + CrimeRecord2013Yes
    
  }
}

DBCrimeRecord[1,3] = CrimeRecord2013Yes
DBCrimeRecord[2,3] = CrimeRecord2013No

#CrimeRecord 2014 Data sum
CrimeRecord2014No = 0
CrimeRecord2014Yes = 0

for(i in 1:6){
  
  CrimeRecord2014No = PreCrimeRecord[i,22] + CrimeRecord2014No
  
}
for(i in 23:31){
  
  for(y in 1:6){
    
    CrimeRecord2014Yes = PreCrimeRecord[y,i] + CrimeRecord2014Yes
    
  }
}

DBCrimeRecord[1,4] = CrimeRecord2014Yes
DBCrimeRecord[2,4] = CrimeRecord2014No

#CrimeRecord 2012 Data sum
CrimeRecord2015No = 0
CrimeRecord2015Yes = 0

for(i in 1:6){
  
  CrimeRecord2015No = PreCrimeRecord[i,32] + CrimeRecord2015No
  
}
for(i in 33:41){
  
  for(y in 1:6){
    
    CrimeRecord2015Yes = PreCrimeRecord[y,i] + CrimeRecord2015Yes
    
  }
}

DBCrimeRecord[1,5] = CrimeRecord2015Yes
DBCrimeRecord[2,5] = CrimeRecord2015No

#CrimeRecord 2016 Data sum
CrimeRecord2016No = 0
CrimeRecord2016Yes = 0

for(i in 1:6){
  
  CrimeRecord2016No = PreCrimeRecord[i,42] + CrimeRecord2016No
  
}
for(i in 43:51){
  
  for(y in 1:6){
    
    CrimeRecord2016Yes = PreCrimeRecord[y,i] + CrimeRecord2016Yes
    
  }
}

DBCrimeRecord[1,6] = CrimeRecord2016Yes
DBCrimeRecord[2,6] = CrimeRecord2016No

#2012~2016 CrimeRecord Total sum
Yes = 0
No = 0
for ( i in 2:6){
  
  Yes = DBCrimeRecord[1,i] + Yes
  No = DBCrimeRecord[2,i] + No
  
}

DBCrimeRecord[1,7] = Yes
DBCrimeRecord[2,7] = No

#AllTotal divide and Percentage input
AllTotal = Yes + No
DBCrimeRecord[1,8] = Yes/AllTotal
DBCrimeRecord[2,8] = No/AllTotal

write.csv(DBCrimeRecord,"CrimeRecord.csv")
