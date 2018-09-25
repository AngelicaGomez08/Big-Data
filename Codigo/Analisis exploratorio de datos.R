##Analisis exploratorio de datos
rm(list = ls())
summary(celebrity_deaths_4)
library(ggplot2)
gglpot(celebrity_deaths_4, aes(celebrity_deaths_4$age))+
  geom_bar()
library(dplyr)
celebridades <- celebrity_deaths_4%>%
  filter(.$age > 15 & .$age < 20)
table(celebridades$cause_of_death)%>%
  cbind()
celebridades%>%
  ggplot(aes(.$cause_of_death))+
  geom_bar()
library(knitr) 
celebridades%>%dim()%>&kable 
celebridades%>%
  glimpse()

##transformar variables
celebridades$age<-as.numeric(celebridades$age)

summary(celebridades$age)%>%
  cbind()

celebridades$fame_score%>%summary()
celebridades<-celebridades%>%
  filter(.$fame_score != "NA'S")
table(celebridades$fame_score)
summary(celebridades$fame_score)

##Predecir Mediana
boxplot(celebridades$fame_score)

##Graficas a la misma vez
par(mfrow = c(1,2))
boxplot(celebridades$fame_score)
boxplot(celebridades$age)

