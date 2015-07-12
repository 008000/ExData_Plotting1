data <- read.csv("household_power_consumption_subset.csv", sep = ";")
datetimeStrings <- paste(data$Date, data$Time)
data$datetime <- strptime(datetimeStrings, "%d/%m/%Y %H:%M:%S")

png(filename = "plot2.png")
with(data, {
    plot(datetime, Global_active_power, type = "l", ylab = "Global Active Power (kilowatts)", xlab="")
})
dev.off()