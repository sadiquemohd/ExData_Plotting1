#Script : Plot4.R
# Plots for different variable comparisons
#Make sure that the load function is created
source('F:/c4proj/plot_load.r')

furl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#call the function to load, pass the URL and data range for the subset
plot_data <- plot_dataset(furl,"2007-02-01","2007-02-02")

#set the multiplot parameter

par(mfrow=(c(2,2)))

#1.Global Active Power
plot(plot_data$Time,plot_data$Global_active_power , type = "l" , xlab ="",ylab= "Global Active Power")

#2. Time vs Voltage

plot(plot_data$Time,plot_data$Voltage , type = "l" , xlab ="datetime",ylab= "Voltage")

#3. Submetring vs time

plot( plot_data$Time,plot_data$Sub_metering_1 , col = "black" , type = "l" , xlab = "" , ylab = "Energy sub metering")
#Add lines for Metering 2 and 3
lines(plot_data$Time,plot_data$Sub_metering_2 , col = "red" , type = "l")
lines(plot_data$Time,plot_data$Sub_metering_3 , col = "blue" , type = "l")
#Add legends
legend("topright" , lty = 1, col = c ("black" ,"red","blue"), c("Sub_metering_1","Sub_metering_2", "Sub_metering_3")
       ,border ="black")

#4. Reactive power vs time
plot(plot_data$Time,plot_data$Global_reactive_power , type = "l" , xlab ="datetime" , ylab = "Global_reactive_power")
