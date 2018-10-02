#plot 4
png("plot4.png", width=480, height=480)
#set mfrow
par(mfrow = c(2, 2)) 

#1(same as plot2)
plot(datetime, data$Global_active_power, type="l", xlab="", ylab="Global Active Power")

#2 change voltage as num
data$Voltage<-as.numeric(data$Voltage)
plot(datetime, data$Voltage, type="l", xlab="datetime", ylab="Voltage")

#3(same as plot3)
plot(datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub meeting")
lines(datetime,data$Sub_metering_2,type = "l",col="red")
lines(datetime,data$Sub_metering_3,type = "l",col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=0.1, col=c("black", "red", "blue"), bty="o")

#4 change global reactive power as num
data$Global_reactive_power<-as.numeric(data$Global_reactive_power)
plot(datetime, data$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
dev.off()
