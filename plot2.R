plot2<-function(){
  a<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
  b<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
  b$DateTime<-strptime(paste(b$Date,b$Time), "%d/%m/%Y %T")
  png(file="plot2.png")
  plot(y=b$Global_active_power,x=b$DateTime, xlab="",ylab="Global Active Power (kilowatts)", type="l")
  dev.off()
}