library(datasets)
source("load_zip_to_df.R")
png(file="./plot2.png")
plot(power_cons$Date_Time,
     power_cons$Global_active_power,
     type="l",
     xlab="",
     ylab="Global Active Power (kilowatts)")
dev.off()