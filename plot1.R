#plot1
data$Global_active_power<-as.numeric(data$Global_active_power)

png("plot1.png",width = 480,height = 480)
hist(x=data$Global_active_power,
     xlab="Global Active Power (kilowatts)",
     main = "Global Active Power",
     col = "red")
dev.off()
