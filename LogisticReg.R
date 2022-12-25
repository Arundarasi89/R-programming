install.packages(caTool)
library(caTool)

setwd("~/Downloads")
data <- read.csv("Telco.csv")
View(data)


split <- sample.split(data,SplitRatio=0.8)
split
training <- subset(data,split=="TRUE")
testing <- subset(data,split=="FALSE")
model <- glm(Churn~.,training,family="binomial")
summary(model)

#We will change “No phone service” to “No” for column “MultipleLines”
data$MultipleLines <- as.factor(mapvalues(data$MultipleLines, from=c("No phone service"), to=c("No")))



