par(mfrow = c(2, 2))
plot(data$Time, data$Global_active_power, type="l", 
     xlab = "", ylab = "Global Active Power")
plot(data$Time, data$Voltage, type="l", xlab = "DateTime", ylab = "Voltage")
plot(data$Time, data$Sub_metering_1, type = "l",xlab = "", ylab = "Energy Sub metering")
lines(data$Time, data$Sub_metering_2, col ="red")
lines(data$Time, data$Sub_metering_3, col ="blue")
legend("topright", col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1, 1), bty = "n", cex = .5)
plot(data$Time, data$Global_reactive_power, xlab = "DateTime", 
     ylab = "Global Reactive Power", type = "l")
dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
