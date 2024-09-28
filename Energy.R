# Load necessary libraries
library(ggplot2)
library(dplyr)

# Load the dataset
data <- read.csv("E:\\homework\\Energy Prediction\\KAG_energydata_complete.csv")

# Feature Engineering
# 1. Normalize the temperature and humidity data
data <- data %>%
  mutate(T1_norm = (T1 - min(T1)) / (max(T1) - min(T1)),
         RH_1_norm = (RH_1 - min(RH_1)) / (max(RH_1) - min(RH_1)),
         T2_norm = (T2 - min(T2)) / (max(T2) - min(T2)),
         RH_2_norm = (RH_2 - min(RH_2)) / (max(RH_2) - min(RH_2)),
         T3_norm = (T3 - min(T3)) / (max(T3) - min(T3)),
         RH_3_norm = (RH_3 - min(RH_3)) / (max(RH_3) - min(RH_3)))

# 2. Create new features: Mean temperature and humidity
data <- data %>%
  mutate(Mean_Temp = (T1 + T2 + T3) / 3,
         Mean_Humidity = (RH_1 + RH_2 + RH_3) / 3)

# 3. Difference between outside and inside temperature
data <- data %>%
  mutate(Temp_Diff = T_out - T1)

# Menghilangkan fitur redundant (Mean_Temp dan Mean_Humidity) dari model
model_improved <- lm(Appliances ~ T1_norm + RH_1_norm + T2_norm + RH_2_norm + T3_norm + RH_3_norm + Temp_Diff, data = data)

# Summary of the improved model
summary(model_improved)

# Predicting appliances energy use for new data points (tanpa Mean_Temp dan Mean_Humidity)
new_data_improved <- data.frame(T1_norm = c(0.6, 0.7, 0.8), RH_1_norm = c(0.45, 0.50, 0.55), 
                                T2_norm = c(0.65, 0.7, 0.75), RH_2_norm = c(0.48, 0.5, 0.53),
                                T3_norm = c(0.68, 0.75, 0.80), RH_3_norm = c(0.45, 0.48, 0.5),
                                Temp_Diff = c(5, 4.5, 4))

# Predictions with the improved model
predictions_improved <- predict(model_improved, new_data_improved)

# View improved predictions
predictions_improved

# Load library car for VIF calculation
library(car)

# Model improved (same as previously defined)
model_improved <- lm(Appliances ~ T1_norm + RH_1_norm + T2_norm + RH_2_norm + 
                       T3_norm + RH_3_norm + Temp_Diff, data = data)

# Calculate VIF for each predictor
vif_values <- vif(model_improved)

# Display VIF values
vif_values
