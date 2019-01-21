#Plot 3
plot(df_sub$Datetime, df_sub$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines(df_sub$Datetime, df_sub$Sub_metering_2, type = "l", col = "red")
lines(df_sub$Datetime, df_sub$Sub_metering_3, type = "l", col = "blue")

dev.copy(png, "plot3.png")
dev.off()
