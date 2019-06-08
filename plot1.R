# Construct a histogram between Global Active Powerand save it to a PNG file with a 
# width of 480 pixels and a height of 480 pixels

hist(data$Global_active_power, main = paste("Global Active Power"), 
     xlab = "Global Active Power(kilowatts)", ylab = "Frequency", 
     col = "red")
dev.copy(png, file = "plot1.png", width = 480, height = 480)
dev.off()
