library(dplyr)

householdpower <- read.table("household_power_consumption.txt", header=TRUE, sep= ";", na.strings = c("?",""))
View(householdpower)

summary(householdpower)
new_data<-subset(householdpower,householdpower$Date %in% c("1/2/2007", "2/2/2007"))
View(new_data)

hist(new_data$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

png(filename="plot1.png", width=480, height=480, type="cairo")
hist(new_data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
