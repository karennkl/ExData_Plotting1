# Full dataset already downloaded and set in working directory
dfile <- "./household_power_consumption.txt"
full_data <- read.table(dfile, header = T, sep= ";", stringsAsFactors = F, dec =".")
subset_data <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007") ,]

#str(subSetData)
datetime <- strptime(paste(subset_data$Date, subset_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
g_a_p <- as.numeric(subset_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()