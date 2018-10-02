#read data
library(lubridate)
library(dplyr)
dataset<-read.csv("household_power_consumption.txt",sep = ";")
str(dataset)
head(dataset,2)
#only take 1/2/2007~2/2/2007
data<-filter(dataset,Date=="1/2/2007"|Date=="2/2/2007")
#change the data and time to Date type
data$Date<-strptime(data$Date,"%d/%m/%Y")
data$Time<-strptime(data$Time,"%H:%M:%S")
