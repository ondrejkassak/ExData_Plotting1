##load data
source("load_data.R")

## print Plot into device
with(
  subSetData, 
  {
    plot(
      Sub_metering_1 ~ DateTime, 
      type = "l", 
      ylab = "Energy sub metering", 
      xlab = ""
      )
    lines(
      Sub_metering_2 ~ DateTime, 
      col = 'Red'
      )
    lines(
      Sub_metering_3 ~ DateTime, 
      col = 'Blue'
      )
    }
  )
legend(
  "topright", 
  col = c("black", "red", "blue"), 
  lty = 1, 
  lwd = 2.5,
  legend = c("Sub_metering_1  ", "Sub_metering_2  ", "Sub_metering_3  ")
  )

## save Plot to file
dev.copy(png, file="plot3.png", height=480, width=480)

## close device
dev.off()