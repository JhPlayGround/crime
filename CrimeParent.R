PreCrimePartent = read.csv("PreCrimeParent.csv")
DBCrimeParent = read.csv("DBCrimeParent.csv")

#CrimeParent 2012 sum Data
YP2012 = 0
NP2012 = 0
for(i in 1:6){

  YP2012 = PreCrimePartent[i,2] + YP2012
  NP2012 = PreCrimePartent[i,3] + NP2012
  
}

#CrimeParent 2012 input DBCrimeParent
DBCrimeParent[1,2] = YP2012
DBCrimeParent[2,2] = NP2012

#CrimeParent 2013 sum Data
YP2013 = 0
NP2013 = 0
for(i in 1:6){
  
  YP2013 = PreCrimePartent[i,4] + YP2013
  NP2013 = PreCrimePartent[i,5] + NP2013
  
}

#CrimeParent 2013 input DBCrimeParent
DBCrimeParent[1,3] = YP2013
DBCrimeParent[2,3] = NP2013

#CrimeParent 2014 sum Data
YP2014 = 0
NP2014 = 0
for(i in 1:6){

  YP2014 = PreCrimePartent[i,6] + YP2014
  NP2014 = PreCrimePartent[i,7] + NP2014
  
}

#CrimeParent 2014 input DBCrimeParent
DBCrimeParent[1,4] = YP2014
DBCrimeParent[2,4] = NP2014

#CrimeParent 2015 sum Data
YP2015 = 0
NP2015 = 0
for(i in 1:6){
  
  YP2015 = PreCrimePartent[i,8] + YP2015
  NP2015 = PreCrimePartent[i,9] + NP2015
  
}

#CrimeParent 2015 input DBCrimeParent
DBCrimeParent[1,5] = YP2015
DBCrimeParent[2,5] = NP2015

#CrimeParent 2016 sum Data
YP2016 = 0
NP2016 = 0
for(i in 1:6){
  
  YP2016 = PreCrimePartent[i,10] + YP2016
  NP2016 = PreCrimePartent[i,11] + NP2016
  
}

#CrimeParent 2016 input DBCrimeParent
DBCrimeParent[1,6] = YP2016
DBCrimeParent[2,6] = NP2016

#YP,NP All sum
YPTotal = 0
NPTotal = 0
for(i in 2:6){
  
  YPTotal = DBCrimeParent[1,i] + YPTotal
  NPTotal = DBCrimeParent[2,i] + NPTotal
  
}
DBCrimeParent[1,7] = YPTotal
DBCrimeParent[2,7] = NPTotal

#Pearcentage Input
AllTotal = YPTotal + NPTotal
DBCrimeParent[1,8] = YPTotal/AllTotal
DBCrimeParent[2,8] = NPTotal/AllTotal

write.csv(DBCrimeParent,"CrimeParent.csv")
