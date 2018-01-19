#Frequency Vs Global Active Power
dataset <- read.table("household_power_consumption.txt",sep=";",header=TRUE,stringsAsFactors=FALSE,na.strings="?")
Consumption<-dataset[dataset$Date %in% c("1/2/2007","2/2/2007"),]
Consumption$Date <-format(Consumption$Date,format="%Y%m%d")
Consumption$Datetime <-as.POSIXct(paste(Consumption$Date,Consumption$Time))
Consumption$Global_active_power <- as.numeric(Consumption$Global_active_power)
hist(Consumption$Global_active_power, xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power",col="red")

png(file="plot1.png",width=480, height= 480)
hist(Consumption$Global_active_power, xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power",col="red")
dev.off()






