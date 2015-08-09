cv1 <- grep("1/2/2007",readLines("household_power_consumption.txt"),fixed=TRUE,value=TRUE)
df1 <- as.data.frame(t(as.data.frame(strsplit(cv1,";"))))
rownames(df1) <- c(1:nrow(df1))
colnames(df1) <- strsplit(readLines("household_power_consumption.txt",1),";")[[1]]
df1[,1] <- as.Date(df1[,1],"%d/%m/%Y")
df1 <- df1[df1[,1] == "2007-02-01",]
cv2 <- grep("2/2/2007",readLines("household_power_consumption.txt"),fixed=TRUE,value=TRUE)
cv3 <- strsplit(cv2,";")
for (i in 1:length(cv3)) 
{
        if (length(cv3[[i]]) == 8)
        {
                cv3[[i]] <- c(gsub("[?]",NA,cv3[[i]]),NA)
        }
}
df2 <- as.data.frame(t(as.data.frame(cv3)))
rownames(df2) <- c(1:nrow(df2))
colnames(df2) <- strsplit(readLines("household_power_consumption.txt",1),";")[[1]]
df2[,1] <- as.Date(df2[,1],"%d/%m/%Y")
df2 <- df2[df2[,1] == "2007-02-02",]
df3 <- rbind(df1,df2)
df3$Global_active_power <- as.numeric(df3$Global_active_power)
df3$Datetime <- strptime(paste(df3$Date,df3$Time),format="%Y-%m-%d %H:%M:%S")


