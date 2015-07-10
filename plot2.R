dat <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")

dat1 <-dat[dat$Date == "2007-02-01"| dat$Date == "2007-02-02",]

date_time1 <- paste(as.Date(dat1$Date,  format="%Y-%m-%d"), dat1$Time, sep=" ")

date_time <- as.POSIXlt(date_time1)

par(mar = c(4, 5, 3, 2), ps = 15)

plot(date_time, dat1$Global_active_power, 
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

dev.copy(png, file = "plot2.png")

dev.off()






