source("common.R")
png("./plot3.png", width = 480, height = 480, units = "px")


with(data, {
	plot(c(Date_time,Date_time,Date_time),c(Sub_metering_1,Sub_metering_2,Sub_metering_3), type="n", ylab = "Energy sub metering", xlab = "")
	lines(Date_time,Sub_metering_1, col="black")
	lines(Date_time,Sub_metering_2, col="red")
	lines(Date_time,Sub_metering_3, col="blue")
	legend("topright", 
		legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_1"), 
		lty=c(1,1), 
		lwd=c(2,2),
		col=c("black","red", "blue"
	))

})
dev.off()