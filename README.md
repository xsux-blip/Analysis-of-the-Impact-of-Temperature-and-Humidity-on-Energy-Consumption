# Analysis-of-the-Impact-of-Temperature-and-Humidity-on-Energy-Consumption
To investigate how indoor temperature and humidity, particularly in the kitchen, living room, and laundry room, affect energy consumption.

# Analysis of the Impact of Temperature and Humidity on Energy Consumption

## 1. Research Objective
To investigate how indoor temperature and humidity, particularly in the kitchen, living room, and laundry room, affect energy consumption.

## 2. Methodology
- **Data Collection**: Utilize a dataset that includes temperature data (T1, T2, T3) and humidity data (RH_1, RH_2, RH_3), along with energy consumption data (Appliances).
- **Feature Engineering**:
  - Normalize temperature and humidity data to reduce the scale of the variables.
  - Calculate average temperature and humidity.
  - Determine the difference between outdoor and indoor temperature to create a `Temp_Diff` variable.
- **Linear Regression Analysis**: Employ a linear regression model to evaluate the influence of temperature and humidity variables on energy consumption.

## 3. Analysis Results
- **Linear Regression Model**: The model incorporates normalized temperature (T1_norm, T2_norm, T3_norm) and humidity (RH_1_norm, RH_2_norm, RH_3_norm) variables along with the temperature difference (`Temp_Diff`).
- **Coefficients and Significance**: 
  - T1_norm and RH_1_norm show a significant positive influence on energy consumption, with very low p-values (< 2e-16).
  - T2_norm and RH_2_norm exhibit a significant negative influence on energy consumption.
  - T3_norm has a significant positive effect.
  - RH_3_norm and `Temp_Diff` do not show significant influence (p-values > 0.05).
- **VIF (Variance Inflation Factor)**: 
  - VIF indicates substantial multicollinearity among several variables, particularly T1_norm and RH_1_norm, which should be considered in further modeling.

## 4. Conclusion
- **Influential Environmental Factors**: Indoor temperature, especially at sensor T1 (likely in the kitchen), and humidity at sensor RH_1 have a strong impact on energy consumption.
- **Suggestions for Further Research**: Given the multicollinearity, it is recommended to consider regularization techniques or dimensionality reduction to simplify the model. Additionally, further studies could explore the influence of other factors such as device usage, usage timing, and external weather patterns.

## 5. Recommendations
- **Temperature and Humidity Control**: Optimizing indoor temperature and humidity can help reduce energy consumption. For instance, utilizing natural ventilation when outdoor temperatures are lower than indoor temperatures.
- **Adoption of Smart Technology**: Implementing smart home technology for automated temperature and humidity control can optimize energy use and enhance efficiency.

This analysis provides valuable insights into how environmental factors contribute to energy consumption and can serve as a foundation for developing energy-saving strategies in homes.
