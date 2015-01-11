##load data
source("load_data.R")

## print Plot into device
plot(
  subSetData$Global_active_power ~ subSetData$DateTime, 
  type = "l", 
  ylab = "Global Active Power (kilowatts)", 
  xlab = ""
  )

## save Plot to file
dev.copy(png, file="plot2.png", height=480, width=480)

## close device
dev.off()