# MechaCar_Statistical_Analysis

## Summary
I used R statistics tests to measure several variables and discover correlations and connections between MPG and PSI.

## Linear Regression to Predict MPG
Coefficients
![linearR1](/images/LM.1.png)
Coefficients and Significance codes
![linearR2](/images/lm_summary_stats.png)

•	When we look at the multiple linear regression model that was created based on the mpg, it showed that the variables/coefficients: the intercept, vehicle length, and ground clearance are all very unlikely to provide random amounts of variance. This is demonstrated by the 'Pr(>|t|) values and all three have significance of zero, please note the triple asterisks in the last column.
•	The slope of our multiple linear regression model cannot be considered zero. The reason being is that our p-value which is 5.35e-11 is a lot smaller than our preset significance level of 0.05%. Therefore, the null hypothesis is rejected which means that the slope of our linear regression model is not zero.
•	The multiple linear regression that we created does show us that relationships between mpg and a few of the variables do exist. Since the null was rejected for these stats, that means there is a correlation. I believe this linear regression model can act as way to predict mpg in relation to ground clearance and vehicle length. Those two variables can be modified to improve the mpg stats.

## Summary Statistics on Suspension Coils

![total_summary](/images/pop.summary.png)

![lot_summary](/images/lot_summary.png)

* According to the Lot summary table that we have created there is one lot that that has not maintained the same level of consistency that has been dictated by our manufacturing plant. If we look at Lot 3, the variance is 170.3. The max alloawance for variance is 100. While something will been to be done to address the issue, the overall statistics (including all manufacturing lots) is well within the dictated guidelines.

## T-Test on Suspension Coils

![Population](/images/pop.ttest.png)
![Lot1](/images/lot1.ttest.png)
![Lot2](/images/lot2.ttest.png)
![Lot3](/images/lot3.ttest.png)

Looking at all 4 p-values from each lot and the population it is simple to distinguish the outlier from out One Sample t-test.

* From the Population t-test notice the p-value of 1. which is much higher that the significance level of 0.05%. This means there is not enough evidence to reject the null hypothesis. The suspension coil's PSI result is statistically similar.
* From the Lot1 and Lot2 t-tests, the p-values were 0.057% and 0.027% respectively. Each of these p-values are at or below the significance level. Therefore, for Lots 1 and 2 we will fail to reject the null hypotheses and state that the means of Lot1 and Lot2 and statistically similar to the population mean.
* From the Lot3 t-test, the p-value is 8.246e-05 significantly smaller from the first two lot tests and the significance level of 0.05%. Lot3 is statisitically different from the population mean, therefore we will reject the null hypothesis.

## Study Design: MechaCar vs Competition

* A test that would be useful would be one that looked at MechaCars metrics for highway and city fuel efficiency in realtion to horse power. I believe these metrics could be tested and it would give us insight into the correlations between these metrics and also how we stack up against the competition.

*Null and Alternative Hypotheses*
  - Null: There is no statistical difference between the means of city and hwy fuel efficiency values against horse power.
  - Alternative: There is a statistical differnce between the means of city and hwy fuel efficiency values against horse power.

The Multiple Linear regression test could be a possible test to use in this situation. All 3 variables are continuous and we use the p-value generated from these test to determine if a relationship exists and whether or not the correlation is positive or negative. The only data we need to run this test are the dataset and the variables we would like to compare. 

lm(hp ~ city + hwy, data=MechaCar_df)
