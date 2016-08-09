# Full dataset already downloaded and set in working directory
dfile <- "./household_power_consumption.txt"
full_data <- read.table(dfile, header = T, sep= ";", stringsAsFactors = F, dec =".")
subset_data <- full_data[full_data$Date %in% c("1/2/2007","2/2/2007") ,]

# Plot 1
g_a_p <- as.numeric(subset_data$Global_active_power)
hist(g_a_p, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")

# Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

