#Plot 1
#setwd(path)
DataFile <- read.csv("household_power_consumption.txt",header=TRUE,sep = ";",stringsAsFactors = FALSE,dec=".")
workFile <- subset(DataFile, Date %in% c("1/2/2007", "2/2/2007"))
GlobalActivePower <- as.numeric(workFile$Global_active_power)
png("plot1.png",width=480,height=480)
hist(GlobalActivePower,col="red",main="Global Active Power",xlab="Kilowatt")
dev.off()