# Full dataset already downloaded and set in working directory
dfile <- "./household_power_consumption.txt"
full_data <- read.table(dfile, header = T, sep= ";", stringsAsFactors = F, dec =".")
subset_data <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
s_m_1 <- as.numeric(subset_data$Sub_metering_1)
s_m_2 <- as.numeric(subset_data$Sub_metering_2)
s_m_3 <- as.numeric(subset_data$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(datetime, s_m_1, type="l", xlab="", ylab="Energy sub metering")
lines(datetime, s_m_2, type="l", col ="red")
lines(datetime, s_m_3, type="l", col ="blue") 
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()