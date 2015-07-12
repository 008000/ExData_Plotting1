data <- read.csv("household_power_consumption_subset.csv", sep = ";")
datetimeStrings <- paste(data$Date, data$Time)
data$datetime <- strptime(datetimeStrings, "%d/%m/%Y %H:%M:%S")

png(filename = "plot3.png")
with(data, {
    plot(datetime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab="")
    lines(datetime, Sub_metering_1, col = "black")
    lines(datetime, Sub_metering_2, col = "red")
    lines(datetime, Sub_metering_3, col = "blue")
    legend("topright", lwd = 1, col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
dev.off()