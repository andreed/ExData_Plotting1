library(datasets)
source("load_zip_to_df.R")
png(file="./plot4.png",
    width     = 800,
    height    = 800,
    units     = "px",
    pointsize = 15)
par(mfrow=c(2,2))
plot(power_cons$Date_Time,
     power_cons$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power")
plot(power_cons$Date_Time,
     power_cons$Voltage,
     type="l",
     xlab="datetime",
     ylab="Voltage")
plot(power_cons$Date_Time,
     power_cons$Sub_metering_1,
     type="n",
     xlab="",
     ylab="Energy Sub Metering")
with(power_cons,points(Date_Time,Sub_metering_1,col="black",type="l"))
with(power_cons,points(Date_Time,Sub_metering_2,col="red",type="l"))
with(power_cons,points(Date_Time,Sub_metering_3,col="blue",type="l"))
legend("topright", 
       lty = 1,
       bty = "n",
       col = c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
with(power_cons,
     plot(Date_Time,
          Global_reactive_power,
          type="l",
          xlab="datetime"))
dev.off()