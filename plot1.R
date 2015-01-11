##load data
source("load_data.R")

## print Plot into device
hist(
  subSetData$Global_active_power, 
  main = "Global Active Power", 
  xlab = "Global Active Power (kilowatts)", 
  ylab = "Frequency", 
  col = "Red"
  )

## save Plot to file
dev.copy(png, file="plot1.png", height=480, width=480)

## close device
dev.off()