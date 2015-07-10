dat <- read.csv("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE)

dat$Date <- as.Date(dat$Date, format = "%d/%m/%Y")

dat1 <-dat[dat$Date == "2007-02-01"| dat$Date == "2007-02-02",]

dat1$Global_active_power <- as.numeric(dat1$Global_active_power)

par(mar = c(4, 5, 3, 2), ps = 15)

hist(dat1$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, file = "plot1.png")

dev.off()

