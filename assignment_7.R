# This is an assignment for Introduction to Data Science
# In this requirement, a figure of car parameters is asked to repeated by R. 

rm(list = ls())
library(stringr)
library(tidyr)
library(RColorBrewer)

data=read.csv("AUC data.csv",header=T,row.names = 1)
colnames(data)=c("RA","CD","UC")
data=as.matrix(data)

mypalette=rep(brewer.pal(5,"Blues"),each=3)

space=c(0,rep(c(rep(c(0,0,1),times=4),0,0,2),times=2),rep(c(0,0,1),times=4),c(0,0))

barplot(data,ylim=c(0.89,0.96),col=mypalette,beside = T,xpd=F,angle=c(0,45,-45),
        density=c(300,20,20),space=space)
text(c(seq(1.5,18.5,by=4),seq(22.5,39.5,by=4),seq(43.5,60.5,by=4)),y=0.89,pos=1,
         labels=rep(paste("n=",c(100,150,200,250,300)),times=3),cex=0.7,xpd=T)

legend("top",legend=c("SAFE","AFEX","EXPERT"),bty="n",horiz=T,
       angle=c(0,45,-45),density=c(300,20,20),cex=1,yjust=1.5)
title("AUC Comparison")



