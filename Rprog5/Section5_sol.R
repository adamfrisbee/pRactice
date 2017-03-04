#Section 5 Solution
#Adam Frisbee

#Import dataset
hwdataset<- read.csv("~/datascience/datasets/Section5-Homework-Data.csv")

#Invoke ggplot2 library
library(ggplot2)

#Subset the data by year
subset1960 <- hwdataset[hwdataset$Year==1960,]
subset2013 <- hwdataset[hwdataset$Year==2013,]

#Verify subsetting
head(subset1960)
tail(subset1960)
head(subset2013)
tail(subset2013)

data1960 <- data.frame(subset1960, LifeExpectancy=Life_Expectancy_At_Birth_1960)
head(data1960)

qplot(x=data2013$Fertility.Rate, y=data2013$LifeExpectancy, color=data2013$Region)
