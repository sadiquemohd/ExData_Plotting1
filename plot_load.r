#Purpose To plotting 
# Function to load the ec consumption file 
plot_dataset <- function (fileurl, date1, date2)
{
  fpath <- "F:/c4proj/"
  zipfilename <- "household_power_consumption.zip"
  setwd(fpath)
  fname <- "household_power_consumption.txt"
  
  if (!file.exists(fname)){
  download.file(fileurl,zipfile)
  unzip(zipfile = zipfilename)
  }
  #load the training data sets
  # Restricted to 150K rows due  to the capacity of the PC to process 
  ec_data <- read.table ( fname, header = TRUE , sep =";" , na.strings = "?" , nrows=150000)
    
  ec_data$Time <- strptime(paste(ec_data$Date, ec_data$Time), "%d/%m/%Y %H:%M:%S")
  ec_data$Date <- as.Date(ec_data$Date, "%d/%m/%Y")
  # only use data from the dates 2007-02-01 and 2007-02-02
  
  date_range <- as.Date(c(date1, date2), "%Y-%m-%d")
  
  ec_subset <- subset(ec_data, Date %in% date_range)
  return(ec_subset)
  
}


