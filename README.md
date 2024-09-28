# Analysis-of-the-Impact-of-Temperature-and-Humidity-on-Energy-Consumption
To investigate how indoor temperature and humidity, particularly in the kitchen, living room, and laundry room, affect energy consumption.

# Analysis of the Impact of Temperature and Humidity on Energy Consumption
# Model Analysis

## 1. Model Description
The linear regression model developed aims to predict energy consumption for Appliances based on several independent variables, including T1_norm, RH_1_norm, T2_norm, RH_2_norm, T3_norm, RH_3_norm, and Temp_Diff.

## 2. VIF (Variance Inflation Factor) Results
The VIF results indicate multicollinearity issues among several variables:

- **T1_norm**: 13.42
- **RH_1_norm**: 14.23
- **T2_norm**: 19.18
- **RH_2_norm**: 13.36
- **T3_norm**: 6.70
- **RH_3_norm**: 4.79
- **Temp_Diff**: 2.28

A VIF value above 10 indicates high multicollinearity, particularly for T2_norm, T1_norm, and RH_1_norm. This suggests that these variables may be interrelated, which can affect the interpretation of coefficients in the model.

## 3. Regression Model Summary
Based on the regression model summary:

- **Intercept**: 243.04, indicating the estimated energy consumption when all independent variables are zero.
- **Significant Positive Influence**: Variables T1_norm and RH_1_norm have a significant positive effect on energy consumption with p-values < 0.001.
- **Significant Negative Influence**: Variables T2_norm and RH_2_norm show a significant negative effect.
- **T3_norm**: Positive influence but with a p-value greater than 0.05, indicating that its effect is not significant.
- **RH_3_norm and Temp_Diff**: Both show high p-values, meaning they are not significant predictors of energy consumption.

## 4. R-Squared
The Multiple R-squared value of 0.08614 indicates that the model explains approximately 8.6% of the variance in energy consumption, which is relatively low. This suggests that there are other factors outside of the included variables that may influence energy consumption.

## 5. Predictions
The model was also used to predict energy consumption based on new data. The prediction results for three sets of new variable values are as follows:

- For **T1_norm = 0.6**, predicted energy consumption is approximately **155.81**.
- For **T1_norm = 0.7**, predicted energy consumption is approximately **181.49**.
- For **T1_norm = 0.8**, predicted energy consumption is approximately **196.24**.
