library(dplyr)
MechaCar_MPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(MechaCar_MPG$mpg ~ MechaCar_MPG$vehicle_length + MechaCar_MPG$vehicle_weight + MechaCar_MPG$spoiler_angle + MechaCar_MPG$ground_clearance + MechaCar_MPG$AWD, data = MechaCar_MPG)
summary(lm(MechaCar_MPG$mpg ~ MechaCar_MPG$vehicle_length + MechaCar_MPG$vehicle_weight + MechaCar_MPG$spoiler_angle + MechaCar_MPG$ground_clearance + MechaCar_MPG$AWD, data = MechaCar_MPG))
