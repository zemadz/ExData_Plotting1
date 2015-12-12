source("loadData.R")
firstPlot <- function() {
	with(data, hist(Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", col = "red", main="Global Active Power"))
}
createFirstPlotPng <- function() {
	plotToFile(firstPlot, "plot1")
}