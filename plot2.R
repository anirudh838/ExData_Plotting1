# Construct the plot Time Vs Global Active power and save it to a PNG file with a 
# width of 480 pixels and a height of 480 pixels
plot(data$Time, data$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)")
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()

