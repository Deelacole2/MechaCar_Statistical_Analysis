
library(dplyr)

#MechaCar Linear Regression Model

MechaCar_df <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df) #Linear Regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_df)) # generate summary stats

#MechaCar Suspension Coil Statistical Summary

suspension_coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
head(suspension_coil)
# Statistical description of the suspension coil data frame.
total_summary <- suspension_coil %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
# Statistical summary of the suspension coil data frame grouped my lot number.
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD =  sd(PSI), .groups = 'keep')
