source("get_epower_data.R")
png(file="plot3.png",width=480,height=480)
with(df3,{
        plot(Datetime,Sub_metering_1,type='l',col="Black",ylab="Energy sub metering") 
        lines(Datetime,Sub_metering_2,col="Red")
        lines(Datetime,Sub_metering_3,col="Blue")
        legend("topright",
               lty=1,
               col = c("Black","Red","Blue"), 
               legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
})
dev.off()