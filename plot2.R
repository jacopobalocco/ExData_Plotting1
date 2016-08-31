setwd("C:/Users/IBM_ADMIN/Dropbox/Study/data_science_specialization/projects/datasciencecoursera/exploratory_data_analysis/week1/assignment")

hpc1 <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE, dec=".")
hpc1 <- hpc1[hpc1$Date %in% c("1/2/2007","2/2/2007"), ]
hpc <- data.frame(data.matrix(hpc1))
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
hpc1$datetime <- strptime(paste(hpc1$Date, hpc1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot2.png", width=480, height=480)
with(hpc1, plot(datetime, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
