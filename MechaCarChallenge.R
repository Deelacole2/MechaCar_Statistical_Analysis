
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

#MechaCar Suspension Coil t-test
overall_ttest <- t.test(log10(suspension_coil$PSI), mu=mean(log10(suspension_coil$PSI)))

# Manufacturer Lot subsetted tables
Lot1_summary <- subset(suspension_coil,Manufacturing_Lot=='Lot1') %>% group_by(Manufacturing_Lot) %>% summarize(Lot1_PSI_mean=mean(PSI), .groups = 'keep')
Lot2_summary <- subset(suspension_coil,Manufacturing_Lot=='Lot2') %>% group_by(Manufacturing_Lot) %>% summarize(Lot2_PSI_mean=mean(PSI), .groups = 'keep')
Lot3_summary <- subset(suspension_coil,Manufacturing_Lot=='Lot3') %>% group_by(Manufacturing_Lot) %>% summarize(Lot3_PSI_mean=mean(PSI), .groups = 'keep')

#T.test for each lot compared to the population mean
t.test(log10(suspension_coil$PSI), mu=mean(log10(Lot1_summary$Lot1_PSI_mean)))
t.test(log10(suspension_coil$PSI), mu=mean(log10(Lot2_summary$Lot2_PSI_mean)))
t.test(log10(suspension_coil$PSI), mu=mean(log10(Lot3_summary$Lot3_PSI_mean)))
