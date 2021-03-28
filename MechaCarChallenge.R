library(dplyr)
MechaCar_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)


lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df) #Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df)) # gerate summary stats