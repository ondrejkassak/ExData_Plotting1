## set locale to english (four correct english day output in some plots)
Sys.setlocale("LC_TIME", "English")

## load input dataset into fullData
fullData <- read.table(
  "./household_power_consumption.txt", 
  header = TRUE, 
  sep = ";", 
  colClasses = c(rep("character",2), rep("numeric",7)), 
  na = "?"
  )

## choose subset from fullData into subSetData
subSetData <- fullData[fullData$Date %in% c("1/2/2007","2/2/2007") ,]

##remove fullData
rm(fullData)

## format Date and Time
subSetData$Date <- as.Date(subSetData$Date, format="%d/%m/%Y")
subSetData$DateTime <- as.POSIXct(paste(as.Date(subSetData$Date), subSetData$Time))

