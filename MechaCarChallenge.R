#Deliverable 1
library(dplyr)
MechaCar_MPG <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(MechaCar_MPG$mpg ~ MechaCar_MPG$vehicle_length + MechaCar_MPG$vehicle_weight + MechaCar_MPG$spoiler_angle + MechaCar_MPG$ground_clearance + MechaCar_MPG$AWD, data = MechaCar_MPG)
summary(lm(MechaCar_MPG$mpg ~ MechaCar_MPG$vehicle_length + MechaCar_MPG$vehicle_weight + MechaCar_MPG$spoiler_angle + MechaCar_MPG$ground_clearance + MechaCar_MPG$AWD, data = MechaCar_MPG))

#Deliverable 2
Susp_Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
total_summary <- Susp_Coil %>% summarize(Mean_PSI=mean(Susp_Coil$PSI),
                           Median_PSI=median(Susp_Coil$PSI),
                           Variance_PSI=var(Susp_Coil$PSI),
                           SD_PSI=sd(Susp_Coil$PSI),
                           Num_Vehicles=n(),
                           .groups = 'keep')
lot_summary <- Susp_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),
                                       Median_PSI=median(PSI),
                                       Variance_PSI=var(PSI),
                                       SD_PSI=sd(PSI),
                                       .groups = 'keep')
