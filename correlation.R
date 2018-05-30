setwd("D:/crime")

install.packages("PerformanceAnalytics")
library(PerformanceAnalytics)
library(corrplot)
criminal = read.csv("criminal.csv",header=T,stringsAsFactors = F)
criminal

plot(criminal)
pairs(criminal,panel = panel.smooth)

chart.Correlation(criminal,histogram = TRUE, pch=19)

criminal.cor = cor(criminal)
corrplot(criminal.cor,method="number")
corrplot(criminal.cor,method="square")
