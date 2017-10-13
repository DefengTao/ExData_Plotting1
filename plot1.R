file <- read.table("household_power_consumption.txt",header = T, sep = ";",na.strings = "?")
file$Date <- as.Date(file$Date,format = "%d/%m/%Y")
data <- subset(file, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
png(filename = 'plot1.png',width = 480,height = 480)
with(data,hist(Global_active_power,xlab = 'Global Active Power(kilowatt)',main = 'Global Active Power',col ='red'))
dev.off()

