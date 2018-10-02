#read data
library(lubridate)
library(dplyr)
#don't read data sa factor
dataset<-read.table("household_power_consumption.txt",header = TRUE,sep = ";",stringsAsFactors=FALSE,dec = ".")
str(dataset)
head(dataset,2)
#only take 1/2/2007~2/2/2007
data<-filter(dataset,Date=="1/2/2007"|Date=="2/2/2007")
#change the data and time to Date type and creat datetime
datetime <- strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S") 
