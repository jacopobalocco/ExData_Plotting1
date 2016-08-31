setwd("C:/Users/IBM_ADMIN/Dropbox/Study/data_science_specialization/projects/datasciencecoursera/exploratory_data_analysis/week1/assignment")

hpc1 <- read.csv("household_power_consumption.txt", sep = ";", stringsAsFactors=FALSE, dec=".")
hpc <- hpc1[hpc1$Date %in% c("1/2/2007","2/2/2007"), ]
hpc <- data.frame(data.matrix(hpc))
hpc$datetime <- strptime(paste(hpc$Date, hpc$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 


png("plot1.png", width=480, height=480)
hist(hpc$Global_active_power, col = "red", 
     xlab = "Global active power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()
