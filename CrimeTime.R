PreCrimeTime = read.csv("PreCrimeTime.csv")
DBCrimeTime = read.csv("DBCrimeTime.csv")

#2012 Data sum Input
TH2012 = 0
SX2012 = 0
NN2012 = 0
TE2012 = 0
FT2012 = 0
ET2012 = 0
TO2012 = 0
TF2012 = 0

for(i in 1:6){
  TH2012 = PreCrimeTime[i,2] + TH2012
  SX2012 = PreCrimeTime[i,3] + SX2012
  NN2012 = PreCrimeTime[i,4] + NN2012
  TE2012 = PreCrimeTime[i,5] + TE2012
  FT2012 = PreCrimeTime[i,6] + FT2012
  ET2012 = PreCrimeTime[i,7] + ET2012
  TO2012 = PreCrimeTime[i,8] + TO2012
  TF2012 = PreCrimeTime[i,9] + TF2012
}
DBCrimeTime[1,2] = TH2012
DBCrimeTime[2,2] = SX2012
DBCrimeTime[3,2] = NN2012
DBCrimeTime[4,2] = TE2012
DBCrimeTime[5,2] = FT2012
DBCrimeTime[6,2] = ET2012
DBCrimeTime[7,2] = TO2012
DBCrimeTime[8,2] = TF2012

#2013 Data sum Input
TH2013 = 0
SX2013 = 0
NN2013 = 0
TE2013 = 0
FT2013 = 0
ET2013 = 0
TO2013 = 0
TF2013 = 0

for(i in 1:6){
  TH2013 = PreCrimeTime[i,10] + TH2013
  SX2013 = PreCrimeTime[i,11] + SX2013
  NN2013 = PreCrimeTime[i,12] + NN2013
  TE2013 = PreCrimeTime[i,13] + TE2013
  FT2013 = PreCrimeTime[i,14] + FT2013
  ET2013 = PreCrimeTime[i,15] + ET2013
  TO2013 = PreCrimeTime[i,16] + TO2013
  TF2013 = PreCrimeTime[i,17] + TF2013
}
DBCrimeTime[1,3] = TH2013
DBCrimeTime[2,3] = SX2013
DBCrimeTime[3,3] = NN2013
DBCrimeTime[4,3] = TE2013
DBCrimeTime[5,3] = FT2013
DBCrimeTime[6,3] = ET2013
DBCrimeTime[7,3] = TO2013
DBCrimeTime[8,3] = TF2013

#2014 Data sum Input
TH2014 = 0
SX2014 = 0
NN2014 = 0
TE2014 = 0
FT2014 = 0
ET2014 = 0
TO2014 = 0
TF2014 = 0

for(i in 1:6){
  TH2014 = PreCrimeTime[i,18] + TH2014
  SX2014 = PreCrimeTime[i,19] + SX2014
  NN2014 = PreCrimeTime[i,20] + NN2014
  TE2014 = PreCrimeTime[i,21] + TE2014
  FT2014 = PreCrimeTime[i,22] + FT2014
  ET2014 = PreCrimeTime[i,23] + ET2014
  TO2014 = PreCrimeTime[i,24] + TO2014
  TF2014 = PreCrimeTime[i,25] + TF2014
}
DBCrimeTime[1,4] = TH2014
DBCrimeTime[2,4] = SX2014
DBCrimeTime[3,4] = NN2014
DBCrimeTime[4,4] = TE2014
DBCrimeTime[5,4] = FT2014
DBCrimeTime[6,4] = ET2014
DBCrimeTime[7,4] = TO2014
DBCrimeTime[8,4] = TF2014

#2015 Data sum Input
TH2015 = 0
SX2015 = 0
NN2015 = 0
TE2015 = 0
FT2015 = 0
ET2015 = 0
TO2015 = 0
TF2015 = 0

for(i in 1:6){
  TH2015 = PreCrimeTime[i,26] + TH2015
  SX2015 = PreCrimeTime[i,27] + SX2015
  NN2015 = PreCrimeTime[i,28] + NN2015
  TE2015 = PreCrimeTime[i,29] + TE2015
  FT2015 = PreCrimeTime[i,30] + FT2015
  ET2015 = PreCrimeTime[i,31] + ET2015
  TO2015 = PreCrimeTime[i,32] + TO2015
  TF2015 = PreCrimeTime[i,33] + TF2015
}
DBCrimeTime[1,5] = TH2015
DBCrimeTime[2,5] = SX2015
DBCrimeTime[3,5] = NN2015
DBCrimeTime[4,5] = TE2015
DBCrimeTime[5,5] = FT2015
DBCrimeTime[6,5] = ET2015
DBCrimeTime[7,5] = TO2015
DBCrimeTime[8,5] = TF2015

#2016 Data sum Input
TH2016 = 0
SX2016 = 0
NN2016 = 0
TE2016 = 0
FT2016 = 0
ET2016 = 0
TO2016 = 0
TF2016 = 0

for(i in 1:6){
  TH2016 = PreCrimeTime[i,34] + TH2016
  SX2016 = PreCrimeTime[i,35] + SX2016
  NN2016 = PreCrimeTime[i,36] + NN2016
  TE2016 = PreCrimeTime[i,37] + TE2016
  FT2016 = PreCrimeTime[i,38] + FT2016
  ET2016 = PreCrimeTime[i,39] + ET2016
  TO2016 = PreCrimeTime[i,40] + TO2016
  TF2016 = PreCrimeTime[i,41] + TF2016
}

DBCrimeTime[1,6] = TH2016
DBCrimeTime[2,6] = SX2016
DBCrimeTime[3,6] = NN2016
DBCrimeTime[4,6] = TE2016
DBCrimeTime[5,6] = FT2016
DBCrimeTime[6,6] = ET2016
DBCrimeTime[7,6] = TO2016
DBCrimeTime[8,6] = TF2016

#CrimeTime Total sum
THTotal = 0
SXTotal = 0
NNTotal = 0
TETotal = 0
FTTotal = 0
ETTotal = 0
TOTotal = 0
TFTotal = 0

for(i in 2:6){
  
  THTotal = DBCrimeTime[1,i] + THTotal
  SXTotal = DBCrimeTime[2,i] + SXTotal
  NNTotal = DBCrimeTime[3,i] + NNTotal
  TETotal = DBCrimeTime[4,i] + TETotal
  FTTotal = DBCrimeTime[5,i] + FTTotal
  ETTotal = DBCrimeTime[6,i] + ETTotal
  TOTotal = DBCrimeTime[7,i] + TOTotal
  TFTotal = DBCrimeTime[8,i] + TFTotal
  
}

#CrimeTime Total Input
DBCrimeTime[1,7] = THTotal
DBCrimeTime[2,7] = SXTotal
DBCrimeTime[3,7] = NNTotal
DBCrimeTime[4,7] = TETotal
DBCrimeTime[5,7] = FTTotal
DBCrimeTime[6,7] = ETTotal
DBCrimeTime[7,7] = TOTotal
DBCrimeTime[8,7] = TFTotal

#CrimeTime AllTotal
AllTotal = sum(THTotal,SXTotal,NNTotal,TETotal,FTTotal,ETTotal,TOTotal,TFTotal)

DBCrimeTime[1,8]= THTotal/AllTotal
DBCrimeTime[2,8]= SXTotal/AllTotal
DBCrimeTime[3,8]= NNTotal/AllTotal
DBCrimeTime[4,8]= TETotal/AllTotal
DBCrimeTime[5,8]= FTTotal/AllTotal
DBCrimeTime[6,8]= ETTotal/AllTotal
DBCrimeTime[7,8]= TOTotal/AllTotal
DBCrimeTime[8,8]= TFTotal/AllTotal

write.csv(DBCrimeTime,"CrimeTime.csv")
