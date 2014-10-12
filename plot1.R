plot1<-function(){
  a<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
  b<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
  png(file="plot1.png")
  hist(b$Global_active_power, xlab="Global Active Power (kilowatts)", col="red", main="Global Active Power")
  dev.off()
}