library(datasets)
source("load_zip_to_df.R")
png(file="./plot3.png",
    width     = 480,
    height    = 480,
    units     = "px",
    pointsize = 12)
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
       col = c("black","red","blue"), 
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()