#x변수에 랜덤한 수 100개를 뽑아 Matrix 생성
x = matrix(rnorm(100),nrow=5)
dist(x)

#맨하탄,맥시멈 거리 구하기
dist(x,method = "manhattan")
dist(x,method = "maximum")

data(iris)
head(iris)
#마지막 5번째 열을 제외한 irirs 데이터를 k=3으로 군집분석
#iris 데이터의 Species에 3가지 군집이 있는 것을 알고 있어서 k=3
kmeans.iris = kmeans(iris[,-5],3)

#소수점 둘째자리까지 반올림.
round(sum(kmeans.iris$withinss),2)

#각 데이터가 어떤 군집으로 분류되었는지 cluster로 확인.
kmeans.iris$cluster
#예측이 잘 되었는지 원래 데이터, cluster 데이터, table 로 비교
#원래 데이터
iris[,5]
#cluster 데이터
kmeans.iris$cluster
#table
table(iris[,5],kmeans.iris$cluster)

#각 군의 중심점 확인
kmeans.iris$center

#잘못 군집화를 경우에 대비하여 시행횟수를 10번으로 늘리는 코드
kmeans10.iris = kmeans(iris[,-5],3,nstart = 10)
#10번으로 늘린 후 다시 군집 확인
round(sum(kmeans10.iris$withnss),2)

kmeans.iris$center

table(iris$Species,kmeans10.iris$cluster)
각
#시각화로 확인하는 법
library(ggplot2)
#pch는 심볼, col은 색, cex는 크기
plot(iris[,1:2],pch=8,col=1:3,cex=2)

#군집이 몇개일때 가장 적합한지 알아보는 plot
#k가 2~6까지 확인
visual = NULL
for(i in 2:6)
{
  set.seed(0723)
  eval(parse(text=paste("result",i,"=kmeans(iris[,-5],",i,");",sep="")))
  eval(parse(text=paste("visual[",i,"]=result",i,"$tot.withinss",sep="")))
}
plot(visual[-1],type="l",ylab="",xlab="",main="cluster의 개수에 따른 내부분산")
abline(v=3,col="red")
#k=3일때 가장 적합!
