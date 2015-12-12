source("loadData.R")
thirdPlot <- function() {
	Sys.setlocale(category = "LC_ALL", locale = "english")
	with(data, plot(DateTime,Sub_metering_1,type="n", xlab="", ylab="Energy sub metering"))
	with(data, lines(DateTime,Sub_metering_1))
	with(data, lines(DateTime,Sub_metering_2, col="red"))
	with(data, lines(DateTime,Sub_metering_3, col="blue"))
	legend("topright",10,c(colnames(data[7]),colnames(data[8]),colnames(data[9])), lty=c(1,1), col=c("black","red","blue"))
}
createThirdPlotPng <- function() {
	plotToFile(thirdPlot, "plot3")
}