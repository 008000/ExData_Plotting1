data <- read.csv("household_power_consumption_subset.csv", sep = ";")
datetimeStrings <- paste(data$Date, data$Time)
data$datetime <- strptime(datetimeStrings, "%d/%m/%Y %H:%M:%S")

png(filename = "plot4.png")
par(mfcol = c(2,2))
with(data, {
    plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power", xlab="")
    
    plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab="")
    lines(datetime, Sub_metering_1, col = "black")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright", lwd = 1, col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
           bty = "n")
    
    plot(datetime, Voltage, type = "l", ylab = "Voltage")
    plot(datetime, Global_reactive_power, type = "l")
})
dev.off() 