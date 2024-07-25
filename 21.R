# Load necessary libraries
library(ggplot2)
library(dplyr)

# 1. Create Random Data

# Create a data frame with random data
set.seed(123)  # For reproducibility
data <- data.frame(
  Age = sample(18:80, 100, replace = TRUE),
  BloodPressure = sample(80:180, 100, replace = TRUE),
  Score = rnorm(100, mean = 50, sd = 10)
)

# 2. Basic Statistics

# Calculate basic statistics
mean_age <- mean(data$Age)
median_age <- median(data$Age)
sd_age <- sd(data$Age)

mean_bp <- mean(data$BloodPressure)
median_bp <- median(data$BloodPressure)
sd_bp <- sd(data$BloodPressure)

mean_score <- mean(data$Score)
median_score <- median(data$Score)
sd_score <- sd(data$Score)

cat("Mean Age:", mean_age, "\n")
cat("Median Age:", median_age, "\n")
cat("Standard Deviation of Age:", sd_age, "\n")

cat("Mean Blood Pressure:", mean_bp, "\n")
cat("Median Blood Pressure:", median_bp, "\n")
cat("Standard Deviation of Blood Pressure:", sd_bp, "\n")

cat("Mean Score:", mean_score, "\n")
cat("Median Score:", median_score, "\n")
cat("Standard Deviation of Score:", sd_score, "\n")

# 3. Plotting Histograms

# Plot histogram for Age
hist(data$Age, breaks = 10, main = "Histogram of Age", xlab = "Age", col = "lightblue")

# Plot histogram for Blood Pressure
hist(data$BloodPressure, breaks = 10, main = "Histogram of Blood Pressure", xlab = "Blood Pressure", col = "lightgreen")

# Plot histogram for Score
hist(data$Score, breaks = 10, main = "Histogram of Score", xlab = "Score", col = "lightcoral")

# 4. Boxplots

# Create boxplots
boxplot(Age ~ 1, data = data, main = "Boxplot of Age", ylab = "Age", col = "lightblue")
boxplot(BloodPressure ~ 1, data = data, main = "Boxplot of Blood Pressure", ylab = "Blood Pressure", col = "lightgreen")
boxplot(Score ~ 1, data = data, main = "Boxplot of Score", ylab = "Score", col = "lightcoral")

# 5. Normalization

# Min-Max Normalization
min_max_normalized <- (data$Score - min(data$Score)) / (max(data$Score) - min(data$Score))
cat("Min-Max Normalized Score:\n")
print(min_max_normalized)

# Z-Score Normalization
z_score_normalized <- (data$Score - mean(data$Score)) / sd(data$Score)
cat("Z-Score Normalized Score:\n")
print(z_score_normalized)

# 6. Linear Regression

# Fit a linear regression model
model <- lm(BloodPressure ~ Age + Score, data = data)

# Summary of the model
summary(model)

# Plot the relationship between Age and BloodPressure
plot(data$Age, data$BloodPressure, xlab = "Age", ylab = "Blood Pressure", main = "Scatterplot of Age vs Blood Pressure")
abline(lm(BloodPressure ~ Age, data = data), col = "red")