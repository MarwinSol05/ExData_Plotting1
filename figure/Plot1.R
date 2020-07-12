setwd("C:\\Users\\MARK\\Desktop\\Marwin Documents\\Coursera Courses\\4. Exploratory Data Analysis\\Week 1\\Course Project 1")

library(dplyr)
library(lubridate)

data<-read.table("./household_power_consumption.txt",sep=";")
head(data,n=6)

#Subsetting Data & Cleaning Data
head(data$V1)
head(dmy(data$V1))
which(dmy(data$V1)=="2007-02-01")
which(dmy(data$V1)=="2007-02-02")

dat<-data[66638:69517,]
head(dat)
tail(dat)
names(dat)<-c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
rownames(dat)<-c(1:2880)
head(dat)
tail(dat)

#Plotting Data

gap<-as.numeric(as.character(dat$Global_active_power))
hist(gap,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.copy(png,file="Plot1.png",height=480,width=480)
dev.off()
