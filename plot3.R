dat <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")

dat1 <-dat[dat$Date == "2007-02-01"| dat$Date == "2007-02-02",]

date_time1 <- paste(as.Date(dat1$Date,  format="%Y-%m-%d"), dat1$Time, sep=" ")

date_time <- as.POSIXlt(date_time1)

png("plot3.png", width=480, height=480)

par(mar = c(4, 5, 3, 2), ps = 11)

plot(date_time, dat1$Sub_metering_1, type = "n", 
     xlab = "",
     ylab = "Energy sub metering")

points(date_time, dat1$Sub_metering_1, col = "black", type = "l")
points(date_time, dat1$Sub_metering_2, col = "red", type = "l")
points(date_time, dat1$Sub_metering_3, col = "blue", type = "l")

legend("topright", lty = "solid", col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()








