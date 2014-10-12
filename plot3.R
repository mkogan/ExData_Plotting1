plot3<-function(){
  a<-read.csv("household_power_consumption.txt",header=TRUE,sep=";",na.strings="?")
  b<-a[a$Date %in% c("1/2/2007","2/2/2007"),]
  b$DateTime<-strptime(paste(b$Date,b$Time), "%d/%m/%Y %T")
  png(file="plot3.png")
  plot(x=b$DateTime,y=b$Sub_metering_1, xlab="",ylab="Energy sub metering", type="l")
  lines(y=b$Sub_metering_2,x=b$DateTime, col="red")
  lines(y=b$Sub_metering_3,x=b$DateTime, col="blue")
  legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","red","blue"),lty=1)
  dev.off()
}