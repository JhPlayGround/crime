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


Total_df = read.csv("criminal.csv")
Total_df = Total_df[,c(1:2)]

a=table(Total_df)
table(Total_df)
prop.table(Total_df)

barplot(t(a), beside=TRUE)
legend("topright", c("여자", "남자"), cex=0.8, fill =c("black","gray"))


chisq.test(a)
chisq.test_output_2 = chisq.test(a)
chisq.test_output_2$observed
chisq.test_output_2$expected
chisq.test_output_2$residuals
chisq.test_output_2$statistic
chisq.test_output_2$parameter
chisq.test_output_2$p.value

?chisq.test

