#plot3
data$Sub_metering_1<-as.numeric(data$Sub_metering_1)
data$Sub_metering_2<-as.numeric(data$Sub_metering_2)
data$Sub_metering_3<-as.numeric(data$Sub_metering_3)
png("plot3.png", width=480, height=480)
plot(datetime, data$Sub_metering_1, type="l", xlab="", ylab="Energy sub meeting")
lines(datetime,data$Sub_metering_2,type = "l",col="red")
lines(datetime,data$Sub_metering_3,type = "l",col="blue")
dev.off()

