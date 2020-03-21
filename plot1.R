# Working directory should contain the data set file

# reading the data set
data <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")

# extracting observation for only date 1/2/2007 and 2/2/2007
data_sub <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

#creating first plot, histogram for global active power
hist(data_sub$Global_active_power, xlab = "Global Active Power", ylab = "Frequency", col = "red")

# export the image by save as PNG as 480px by 480px form the plot pannel in the RStudio