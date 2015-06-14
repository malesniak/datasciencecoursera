
hw1 <- read.csv("hw1_data.csv")

Ozone <- data.frame(hw1$Ozone) #isolates Ozone column

Ozone_na <- is.na(Ozone)  #checks NA

sum(Ozone_na)  #returns sum TRUE in Ozone_na

Ozone_clean <- na.omit(Ozone) #returns Ozone w/o NA

hw1.Ozone <- data.frame(hw1$Ozone) #isolates Ozone column

lapply(hw1.Ozone,mean,na.rm=TRUE)

subset1 #where Ozone is >31 and Temp is >90

subset1 <- subset(hw1, Ozone >31 & Temp >90)
subset1

lapply(data.frame(subset1$Solar.R),mean,na.rm=TRUE) #returns mean value for Solar.R in subset1

subset2 #month==6

subset2 <- subset(hw1, Month==6)
subset2

lapply(data.frame(subset2$Temp),mean,na.rm=TRUE)

subset3 <-subset(hw1, Month==5)
subset3

colMax <- function(data) sapply(data, max, na.rm=TRUE)
colMax(sebset3)


