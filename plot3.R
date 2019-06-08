# Construct the plot Time Vs Sub Metric 1, 2 and 3 and save it to a PNG file with a 
# width of 480 pixels and a height of 480 pixels

plot(data$Time,data$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(data$Time,data$Sub_metering_2,col="red")
lines(data$Time,data$Sub_metering_3,col="blue")
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1))
dev.copy(png, file="plot3.png", width=480, height=480)
dev.off()

