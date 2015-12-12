source("loadData.R")
source("plot2.R")
source("plot3.R")
fourthRow1Col2Plot <- function() {
	Sys.setlocale(category = "LC_ALL", locale = "english")
	with(data, plot(DateTime,Voltage,type="n", ylab="Voltage", xlab="datetime"))
	with(data, lines(DateTime,Voltage))
}
fourthRow2Col2Plot <- function() {
	Sys.setlocale(category = "LC_ALL", locale = "english")
	with(data, plot(DateTime,Global_reactive_power,type="n", ylab="Global_reactive_power", xlab="datetime"))
	with(data, lines(DateTime,Global_reactive_power))
}
fourthPlot <- function() {
	par(mfrow=c(2,2))
	Sys.setlocale(category = "LC_ALL", locale = "english")
	secondPlot()
	fourthRow1Col2Plot()
	thirdPlot()
	fourthRow2Col2Plot()
	par(mfrow=c(1,1))
}
createFourthPlotPng <- function() {
	plotToFile(fourthPlot, "plot4")
}