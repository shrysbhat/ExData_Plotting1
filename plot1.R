## Get the data
dataFile <- "./data/household_power_consumption.txt"

## Read data
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

## Subset Data
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#str(subSetData)
globalActivePower <- as.numeric(subSetData$Global_active_power)

## save the PNG
png("plot1.png", width=480, height=480)

## plot the Histogram
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

## close the graphic device
dev.off()