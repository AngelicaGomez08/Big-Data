rm(list = ls())
h=5

data("iris")
names(iris)
cbind(names(iris))
plot(iris$Species)
library(ggplot2)
library(dplyr)
iris$Species%>%
  plot()
ggplot(iris,aes(iris$Species,fill=iris$Species))+
  geom_bar() + ggtitle("Especies") + 
  guides(fill=FALSE) + 
  theme_grey()

dplyr(iris$Species)
a = 1
a<-1
1->a
c(1:10)->arrayList
arrayList
arrayList*2
c(11:15) ->arrayList2
arrayList/arrayList2->temp         
cbind(temp)
library(knitr)
cbind(temp)%>%
  kable()
a=5;b=6
a&b
a>b
!a>b
arrayList[3]
arrayList2[4]
matrix(10:30,ncol = 3,nrow = 7) -> matrix1
t(matrix1)
colnames(matrix1)<-c("a","b","c")
matrix1
c(1,2,3)->a
c(4,5,6) -> b
data.frame(a,b) -> c
c
class(c)
dim(c)
dim(c)[2]
dim(c)[1]
c(-2,-10,5,2,15) -> desordenado
desordenado
sort(desordenado,decreasing = TRUE)
summary(iris)
sd(iris$Sepal.Width)
as="hola"
if(as=="hola")
{
  print("Si  es hola")
}
else
{
  print("No es hola")
}

as=145

if(as==145){
  print("es el valor")
}else{
  print("no es el valor")
}
as=40
i <- 1
while (i < 6000) { print(i)
  i = i+1
}
y <- rep(NA, 100) 
y[1] <- 1
for (i in 2:100) { y[i] <- y[i - 1] + 4 }
y
library(MASS)
painters
painters$School->escuela
escuela
table(escuela)
plot(table(escuela))
ggplot(painters,aes(table(escuela)))+
  geom_bar()

painters%>%
  ggplot(aes(.$School,fill=.$School))+
  geom_bar() + 
  guides(fill=FALSE)
cbind(table(escuela))%>%
  kable(format = 'markdown')
cbind(table(painters$School)/dim(painters)[1]*100)
sum(cbind(table(painters$School)/dim(painters)[1]*100))
round(cbind(table(painters$School)/dim(painters)[1]*100))
barplot(table(painters$School),col = 1:10)
ggplot(painters,aes(School))+geom_bar()+labs(title="New graphic")
escuela=="A"
subset(escuela,escuela=="A")
subset(painters,painters$School == "A")