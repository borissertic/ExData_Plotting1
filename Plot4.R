#Plot 4
par(mfrow = c(2,2))
plot(df_sub$Datetime, df_sub$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")

plot(df_sub$Datetime, df_sub$Voltage, type = "l",
     ylab = "Voltage", xlab = "datetime")

plot(df_sub$Datetime, df_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df_sub$Datetime, df_sub$Sub_metering_2, type = "l", col = "red")
lines(df_sub$Datetime, df_sub$Sub_metering_3, type = "l", col = "blue")

plot(df_sub$Datetime, df_sub$Global_reactive_power, type = "l",
     xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png, "plot4.png")
dev.off()
