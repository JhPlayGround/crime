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
