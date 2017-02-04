library(datasets)
source("load_zip_to_df.R")
png(file="./plot1.png",
    width     = 480,
    height    = 480,
    units     = "px",
    pointsize = 12)
hist(power_cons$Global_active_power,
     col="red",
     main="Global Active Power",
     xlab="Global Active Power (kilowatts)")
dev.off()