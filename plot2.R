source("common.R")
png("./plot2.png", width = 480, height = 480, units = "px")


with(data, {
	plot(Date_time,Global_active_power, type="n", ylab = "Global Active Power (kilowatts)", xlab = "")
	lines(Date_time,Global_active_power)
})
dev.off()
