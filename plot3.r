# master script to solve week 1 assigment

# file household_power_consumption.txt  https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip
# set the library to the main containing this file

# reading all data

data1 = read.csv2(file="household_power_consumption.txt", dec=".", na.strings = "?" , colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric","numeric","numeric") )

data1c = subset(data1, data1$Date %in% c("1/2/2007","2/2/2007" ))   # getting rid of the rest

data1c$date_time = strptime(paste(data1c$Date, data1c$Time), "%d/%m/%Y %H:%M:%S")


#plot3

png(file="plot3.png",width=480,height=480)
plot(data1c$Sub_metering_1 ,x=data1c$date_time, type = "l", xlab="", ylab="Energy sub metering")
lines(data1c$Sub_metering_2 ,x=data1c$date_time, col="red")
lines(data1c$Sub_metering_3 ,x=data1c$date_time, col="blue")

legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ), col=c("black","red", "blue"), lty=1)
dev.off()

dev.off()
