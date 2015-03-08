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
png("./plot1.png", width = 480, height = 480, units = "px")
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power" )
dev.off()