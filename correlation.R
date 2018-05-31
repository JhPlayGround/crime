setwd("D:/crime")

library(PerformanceAnalytics)
library(corrplot)

criminal = read.csv("criminal.csv",header=T,stringsAsFactors = F)
criminal

criminalAG = criminal[,c(1,2)]
criminalAG = table(criminalAG)
criminalAG
barplot(t(criminalAG), beside=TRUE)
legend("topright", c("Women", "Men"), cex=1, fill =c("black","gray"))


criminalAM = criminal[,c(1,3)]
criminalAM = table(criminalAM)
criminalAM
barplot(t(criminalAM), beside=TRUE, col=c("black","gray","red"))
legend("topright", c("Low", "Middle","High"), cex=1, fill =c("black","gray","red"))
