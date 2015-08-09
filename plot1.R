source("get_epower_data.R")
png(file="plot1.png",width=480,height=480)
hist(df3$Global_active_power,main="Global Active Power",xlab="Global Active Power (in kilowatt)",col="Red")
dev.off()