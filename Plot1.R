#Import the data

df <- read.csv(file = "household_power_consumption.txt", header = TRUE, sep = ";", dec = ".")

#Data preprocessing
#Converting date variables

df$Date <- as.Date(df$Date, "%d/%m/%Y")

#Subseting the data

df_sub <- subset(df, df$Date >= as.Date("2007-02-01") & df$Date <= as.Date("2007-02-02"))

df_sub$Global_active_power <- as.character(df_sub$Global_active_power)
df_sub$Global_active_power <- as.numeric(df_sub$Global_active_power)

#Merging date and time
df_sub$Datetime <- as.POSIXct(paste(df_sub$Date, df_sub$Time), format="%Y-%m-%d %H:%M:%S")

df_sub$Sub_metering_1 <- as.character(df_sub$Sub_metering_1)
df_sub$Sub_metering_1 <- as.numeric(df_sub$Sub_metering_1)

df_sub$Sub_metering_2 <- as.character(df_sub$Sub_metering_2)
df_sub$Sub_metering_2 <- as.numeric(df_sub$Sub_metering_2)

df_sub$Voltage <- as.character(df_sub$Voltage)
df_sub$Voltage <- as.numeric(df_sub$Voltage)

df_sub$Global_reactive_power <- as.character(df_sub$Global_reactive_power)
df_sub$Global_reactive_power <- as.numeric(df_sub$Global_reactive_power)


#Plot1
hist(df_sub$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)",
     ylim = c(0, 1200))
dev.copy(png, file = "plot1.png") #Copy histogram to png file
dev.off()
