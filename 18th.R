# Create a mock dataset similar to 'water'
water <- data.frame(
  hardness = c(100, 150, 200, 250, 300, 350, 400, 450, 500, 550),
  mortality = c(800, 750, 700, 720, 680, 640, 600, 580, 550, 520)
)

# Check the structure of the dataset
str(water)

# Plot the relationship between 'mortality' and 'hardness'
plot(water$hardness, water$mortality, 
     xlab = "Hardness", ylab = "Mortality", 
     main = "Scatterplot of Mortality vs Hardness", 
     pch = 16)

# Fit a linear regression model
model <- lm(mortality ~ hardness, data = water)

# Add the regression line to the plot
abline(model, col = "red")

# Display the summary of the model
summary(model)

# Predict mortality for hardness = 88
predicted_mortality <- predict(model, newdata = data.frame(hardness = 88))

# Print the predicted mortality
print(predicted_mortality)