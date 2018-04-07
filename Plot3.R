#Script : Plot3.R
# Sub metering vs time
#Make sure that the load function is created
source('F:/c4proj/plot_load.r')

furl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#call the function to load, pass the URL and data range for the subset
plot_data <- plot_dataset(furl,"2007-02-01","2007-02-02")
plot( plot_data$Time,plot_data$Sub_metering_1 , col = "black" , type = "l" , xlab = "" , ylab = "Energy sub metering")
#Add lines for Metering 2 and 3
lines(plot_data$Time,plot_data$Sub_metering_2 , col = "red" , type = "l")
lines(plot_data$Time,plot_data$Sub_metering_3 , col = "blue" , type = "l")
#Add legends
legend("topright" , lty = 1, col = c ("black" ,"red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
       ,border ="black")
