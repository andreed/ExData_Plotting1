library(lubridate)
library(dplyr)
if (!file.exists("data")) {
    dir.create("data")
}
if (!file.exists("./data/hh_power_consumption.zip")) {
    fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    download.file(fileUrl,destfile="./data/hh_power_consumption.zip")
}
if (!file.exists("./data/household_power_consumption.txt")) {
    unzip("./data/hh_power_consumption.zip",exdir="./data")
}
power_cons <- read.table("./data/household_power_consumption.txt",header=TRUE,sep=";",nrows=86000)
power_cons <- tbl_df(power_cons)
power_cons <- mutate(power_cons,Date_Time=dmy_hms(paste(Date,Time)),Date=dmy(Date),Time=hms(Time))
power_cons <- subset(power_cons,Date=="2007-02-01" | Date=="2007-02-02")
power_cons <- mutate(power_cons,
                     Global_active_power=as.numeric(as.character(Global_active_power)),
                     Global_reactive_power=as.numeric(as.character(Global_reactive_power)),
                     Voltage=as.numeric(as.character(Voltage)),
                     Global_intensity=as.numeric(as.character(Global_intensity)),
                     Sub_metering_1=as.numeric(as.character(Sub_metering_1)),
                     Sub_metering_2=as.numeric(as.character(Sub_metering_2)),
                     Sub_metering_3=as.numeric(as.character(Sub_metering_3)))