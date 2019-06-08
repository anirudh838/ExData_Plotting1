setwd("~/Downloads")
if(!file.exists("exdata-data-household_power_consumption.zip")) {
  temp <- tempfile()
  download.file("http://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
  file <- unzip(temp)
  unlink(temp)
}

df <- read.table(file, sep = ";", na.strings = "?", header = TRUE)

df$DateTime <- strptime(paste(df$Date, df$Time), "%d/%m/%Y %H:%M:%S")
df$DateTime <- as.POSIXct(df$DateTime)

df$Date <- as.Date(df$Date, format = "%d/%m/%Y")
df$Time <- as.POSIXct(strptime(df$Time, "%H:%M:%S"))
df$Global_active_power <- as.numeric(as.character(df$Global_active_power))
df$Global_reactive_power <- as.numeric(as.character(df$Global_reactive_power))
df$Voltage <- as.numeric(as.character(df$Voltage))
df$Global_intensity <- as.numeric(df$Global_intensity)
df$Sub_metering_1 <- as.numeric(as.character(df$Sub_metering_1))
df$Sub_metering_2 <- as.numeric(as.character(df$Sub_metering_2))
df$Sub_metering_3 <- as.numeric(as.character(df$Sub_metering_3))

data <- subset(df, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02"))
write.csv(data, file = "data.csv")








