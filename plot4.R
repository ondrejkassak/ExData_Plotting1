##load data
source("load_data.R")

## print Plot into device
par(
  mfrow = c(2,2), 
  mar = c(4,4,2,1), 
  oma = c(0,0,2,0)
  )
with(
  subSetData, 
  {
    ##top left
    plot(
      Global_active_power ~ DateTime, 
      type = "l", 
      ylab = "Global Active Power", 
      xlab = ""
      )
    
    ##top right
    plot(
      Voltage ~ DateTime, 
      type = "l", 
      ylab = "Voltage", 
      xlab = "datetime"
      )
    
    ##bottom left
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
    legend(
      "topright", 
      c("Sub_metering_1   ", "Sub_metering_2   ", "Sub_metering_3   "), 
      bty = "n", 
      col = c("black", "red", "blue"), 
      lty = 1, 
      lwd = 2.5
      )    
    
    ##bottom right
    plot(
      Global_reactive_power ~ DateTime, 
      type = "l", 
      ylab = "Global_reactive_power", 
      xlab = "datetime"
      )
    }
  )

## save Plot to file
dev.copy(png, file="plot4.png", height=480, width=480)

## close device
dev.off()