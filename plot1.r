# master script to solve week 1 assigment

# file household_power_consumption.txt  https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# set the library to the main containing this file


# reading all data

data1 = read.csv2(file="household_power_consumption.txt", dec=".", na.strings = "?" , colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric","numeric","numeric") )

data1c = subset(data1, data1$Date %in% c("1/2/2007","2/2/2007" ))   # getting rid of the rest

data1c$date_time = strptime(paste(data1c$Date, data1c$Time), "%d/%m/%Y %H:%M:%S")

# Plot 1

png(file="plot1.png",width=480,height=480)
hist(data1c$Global_active_power, col="red", main="Global Active Power", breaks= 12, xlab = "Global Active Power (kilowatts)")
dev.off()
