source("loadData.R")
secondPlot <- function() {
	Sys.setlocale(category = "LC_ALL", locale = "english")
	with(data, plot(DateTime,Global_active_power,type="n", xlab="", ylab="Global Active Power (kilowatts)"))
	with(data, lines(DateTime,Global_active_power))
}
createSecondPlotPng <- function() {
	plotToFile(secondPlot, "plot2")
}