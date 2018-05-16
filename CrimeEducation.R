setwd("C:/Users/Hello world/Documents/Crime backup/CrimeEducation")
crimeeducation = read.csv("CrimeEducationAll.csv",stringsAsFactors=F)
crimeeducationtotal = read.csv("CrimeEducationTotal.csv",stringsAsFactors=F)

library(dplyr)

#2012 crime
CE_2012ES=sum(crimeeducation$X2012ES)
CE_2012MS=sum(crimeeducation$X2012MS)
CE_2012HS=sum(crimeeducation$X2012HS)
CE_2012UV2=sum(crimeeducation$X2012UV2)
CE_2012UV4=sum(crimeeducation$X2012UV4)
CE_2012GS=sum(crimeeducation$X2012GS)
crimeeducationtotal$X2012 = c(CE_2012ES,CE_2012MS,CE_2012HS,CE_2012UV2,CE_2012UV4,CE_2012GS)

#2013 crime
CE_2013ES = sum(crimeeducation$X2013ES)
CE_2013MS = sum(crimeeducation$X2013MS)
CE_2013HS = sum(crimeeducation$X2013HS)
CE_2013UV2 = sum(crimeeducation$X2013UV2)
CE_2013UV4 = sum(crimeeducation$X2013UV4)
CE_2013GS = sum(crimeeducation$X2013GS)
crimeeducationtotal$X2013 = c(CE_2013ES,CE_2013MS,CE_2013HS,CE_2013UV2,CE_2013UV4,CE_2013GS)

#2014 crime
CE_2014ES = sum(crimeeducation$X2014ES)
CE_2014MS = sum(crimeeducation$X2014MS)
CE_2014HS = sum(crimeeducation$X2014HS)
CE_2014UV2 = sum(crimeeducation$X2014UV2)
CE_2014UV4 = sum(crimeeducation$X2014UV4)
CE_2014GS = sum(crimeeducation$X2014GS)
crimeeducationtotal$X2014 = c(CE_2014ES,CE_2014MS,CE_2014HS,CE_2014UV2,CE_2014UV4,CE_2014GS)

#2015 crime
CE_2015ES = sum(crimeeducation$X2015ES)
CE_2015MS = sum(crimeeducation$X2015MS)
CE_2015HS = sum(crimeeducation$X2015HS)
CE_2015UV2 = sum(crimeeducation$X2015UV2)
CE_2015UV4 = sum(crimeeducation$X2015UV4)
CE_2015GS = sum(crimeeducation$X2015GS)
crimeeducationtotal$X2015 = c(CE_2015ES,CE_2015MS,CE_2015HS,CE_2015UV2,CE_2015UV4,CE_2015GS)

#2016 crime
CE_2016ES = sum(crimeeducation$X2016ES)
CE_2016MS = sum(crimeeducation$X2016MS)
CE_2016HS = sum(crimeeducation$X2016HS)
CE_2016UV2 = sum(crimeeducation$X2016UV2)
CE_2016UV4 = sum(crimeeducation$X2016UV4)
CE_2016GS = sum(crimeeducation$X2016GS)
crimeeducationtotal$X2016 = c(CE_2016ES,CE_2016MS,CE_2016HS,CE_2016UV2,CE_2016UV4,CE_2016GS)


#Total crime
  for(i in 1:6){
    
    crimeeducationtotal[i,7] = sum(as.numeric(crimeeducationtotal[i,2:6]))
 
}

#Percentage crime √— ≈‰≈ª ≥™¥©±‚ ≈‰≈ª
#Alltotal/total
Alltotal=0
for(i in 1:6){

Alltotal = sum(as.numeric(crimeeducationtotal[i,7])) + Alltotal

}
for(i in 1:6){
  
  crimeeducationtotal[i,8] = crimeeducationtotal[i,7]/Alltotal

  }

View(crimeeducationtotal)

write.csv(crimeeducationtotal, file = "CrimeEducation.csv")
