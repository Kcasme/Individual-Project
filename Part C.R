# Part C - Write an R script 

library(readr)
allDNA <- read_csv("allDNA.csv")
View(allDNA)

prop <- apply(allDNA,2,function(x){x/sum(x)}) #convert to proportions
paste(prop)

#subset columns 
A = prop[,1]
G = prop[,2]
T = prop[,3]
C = prop[,4]

#create four panel histogram
par(mfrow=c(2,2))
hist(A)
hist(G)
hist(T)
hist(C)


