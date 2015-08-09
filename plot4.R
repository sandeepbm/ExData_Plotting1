source("get_epower_data.R")
png(file="plot4.png",width=480,height=480)
par(mfrow=c(2,2))
with(df3,{
        plot(Datetime,Global_active_power,type='l',
             ylab="Global Active Power")
        plot(Datetime,Voltage,type='l')
        plot(Datetime,Sub_metering_1,type='l',col="Black",ylab="Energy sub metering") 
        lines(Datetime,Sub_metering_2,col="Red")
        lines(Datetime,Sub_metering_3,col="Blue")
        legend("topright",
               lty=1,
               col = c("Black","Red","Blue"), 
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        plot(Datetime,Global_reactive_power,type='l')
})
dev.off()