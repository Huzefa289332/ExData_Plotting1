# Working directory should contain the data set file

# reading the data set
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")

# extracting observation for only date 1/2/2007 and 2/2/2007
data_sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

# first we need a date time feature
date_time <- as.POSIXlt(paste(as.Date(data_sub$Date, format="%d/%m/%Y"), data_sub$Time))

# plotting
plot(date_time,data_sub$Sub_metering_1, type = "l")
lines(date_time,data_sub$Sub_metering_2,col="red")
lines(date_time,data_sub$Sub_metering_3,col="blue")

# export the image by save as PNG as 480px by 480px form the plot pannel in the RStudio