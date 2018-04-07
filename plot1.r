#Script: plot1.r 
#Histogram on the Global Active Power
#Make sure that the load function is created
source('F:/c4proj/plot_load.r')

furl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
#call the function to load, pass the URL and data range for the subset
plot_data <- plot_dataset(furl,"2007-02-01","2007-02-02")
#Plot the first histogram
hist(plot_data$Global_active_power,
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)",
     ylab="Frequency",
     col="red")
