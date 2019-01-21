#Plot2
plot(df_sub$Datetime, df_sub$Global_active_power, type = "l",
    ylab = "Global Active Power (kilowatts)", xlab = "")
dev.copy(png, "plot2.png") #Copy to file
dev.off()
