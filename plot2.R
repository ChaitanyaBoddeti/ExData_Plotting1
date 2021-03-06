library(dplyr)

householdpower <- read.table("household_power_consumption.txt", header=TRUE, sep= ";", na.strings = c("?",""))
View(householdpower)

summary(householdpower)
new_data<-subset(householdpower,householdpower$Date %in% c("1/2/2007", "2/2/2007"))
View(new_data)

summary(new_data)




new_data$DateTime<-paste(new_data$Date,new_data$Time)
new_data$DateTime<-strptime(new_data$DateTime,format = "%d/%m/%Y %H:%M:%S")
plot(new_data$DateTime,new_data$Global_active_power,type="l",xlab=" ",,ylab = "Global Active Power(kilowatts)")

png(filename="plot3.png",width = 480, height = 480)
plot(new_data$DateTime,new_data$Global_active_power,type="l",xlab=" ",,ylab = "Global Active Power(kilowatts)")
dev.off()
     