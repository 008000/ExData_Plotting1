data <- read.csv("household_power_consumption_subset.csv", sep = ";")

png(filename = "plot1.png")
hist(data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")
dev.off() 