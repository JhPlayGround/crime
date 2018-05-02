setwd("D:/crime")

crimeTime = read.csv("crimeTime.csv")
class(crimeTime)

crimeTimeData = data.frame(crimeTime[4,])
crimeTimeData = rbind(crimeTimeData, crimeTime[6,])
crimeTimeData = rbind(crimeTimeData, crimeTime[7,])
crimeTimeData = rbind(crimeTimeData, crimeTime[12,])
crimeTimeData = rbind(crimeTimeData, crimeTime[13,])
crimeTimeData = rbind(crimeTimeData, crimeTime[16,])

write.csv(crimeTimeData,"crimeTimeData.csv")
