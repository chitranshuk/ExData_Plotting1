#Plot 4
#setwd(path)
DataFile <- read.csv("household_power_consumption.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE,dec=".")
workFile <- subset(DataFile, Date %in% c("1/2/2007", "2/2/2007"))
GlobalActivePower <- as.numeric(workFile$Global_active_power)
meter1 <- as.numeric(workFile$Sub_metering_1)
meter2 <- as.numeric(workFile$Sub_metering_2)
meter3 <- as.numeric(workFile$Sub_metering_3)
GlobalReactivePower <- as.numeric(workFile$Global_reactive_power)
voltage <- as.numeric(workFile$Voltage)


png("plot4.png",width=480,height=480)
par(mfrow =c(2,2))

plot(AxisX,GlobalActivePower,type="l",xlab="",ylab="Global Active Power",cex=0.2)
plot(AxisX,voltage,type="l",xlab="DateTime",ylab="Volatage")
plot(AxisX,meter1,type="l",ylab="Energy Sub Metering",xlab="",col="green")
lines(AxisX,meter2,type="l",col="red")
lines(AxisX,meter3,type="l",col="blue")
legend("topright",c("Sub Mtering 1","Sub Metering 2","Sub Metering 3"),lty=1,lwd=2.5,col=c("green","red","blue"),bty="o")

plot(AxisX,GlobalReactivePower,type="l",xlab="DateTime",ylab="Global Reactive Power")
dev.off()