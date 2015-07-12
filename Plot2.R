#Plot 2
#setwd(path)
DataFile <- read.csv("household_power_consumption.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE,dec=".")
workFile <- subset(DataFile, Date %in% c("1/2/2007", "2/2/2007"))
GlobalActivePower <- as.numeric(workFile$Global_active_power)
AxisX <- strptime(paste(workFile$Date,workFile$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
png("plot2.png",width=480,height=480)
plot(AxisX,GlobalActivePower,type="l",xlab="",ylab="Kilowatt")
dev.off()
