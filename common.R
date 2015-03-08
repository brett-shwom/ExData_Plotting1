setClass("myDate")
setAs("character","myDate", function(from) strptime(from, format="%d/%m/%Y %H:%M:%S"))
data <- read.csv(
	"household_power_consumption-2.1.2007-2.2.2007.txt",
	header = TRUE,
	sep = ";",
	colClasses=c(
		"myDate",
		"numeric",
		"numeric",
		"numeric",
		"numeric",
		"numeric",
		"numeric",
		"numeric"
	)
)
