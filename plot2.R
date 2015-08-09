source("get_epower_data.R")
png(file="plot2.png",width=480,height=480)
with(df3,plot(Datetime,Global_active_power,type='l',
              ylab="Global Active Power (kilowatts)"))
dev.off()