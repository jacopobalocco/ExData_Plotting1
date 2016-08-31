setwd("C:/Users/IBM_ADMIN/Dropbox/Study/data_science_specialization/projects/datasciencecoursera/exploratory_data_analysis/week1/assignment")

# hpc1 <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE, dec=".")
# hpc <- hpc1[hpc1$Date %in% c("1/2/2007","2/2/2007"), ]
# hpc <- data.frame(data.matrix(hpc))
# hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot3.png", width=480, height=480)

with(hpc1, plot(datetime, Sub_metering_1, type="l",lty = 1, ylab = "Energy sub metering", xlab = ""))
lines(hpc1$datetime, hpc1$Sub_metering_2, lty = 1, col = "red")
lines(hpc1$datetime, hpc1$Sub_metering_3, lty = 1, col = "blue")
legend("topright",lty=c(1,1, 1),col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.off()

