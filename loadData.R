loadData <- function() {
	lines <- readLines("household_power_consumption.txt")
	linesOfInterestIndexes <- grep("^[12]/2/2007", substr(lines, 1, 8))
	data <- read.table(text=lines[linesOfInterestIndexes], header = FALSE, sep = ";", col.names=c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))
	data$DateTime <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
	return(data)
}
plotToFile <- function(plotfun, filename) {
	png(file=paste(filename, ".png", sep=""),width=480,height=480)
	plotfun()
	dev.off()
}