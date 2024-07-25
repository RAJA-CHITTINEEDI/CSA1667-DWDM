# Define the data
data <- c(200, 300, 400, 600, 1000)

# Define min and max values for min-max normalization
min_value <- 200
max_value <- 1000

# Define the range to normalize to for min-max normalization
range_min <- 0
range_max <- 1

# Calculate mean and standard deviation for z-score normalization
mean_value <- mean(data)
std_dev <- sd(data)

# (a) Min-Max Normalization
min_max_normalized <- (data - min_value) / (max_value - min_value) * (range_max - range_min) + range_min

# (b) Z-score Normalization
z_score_normalized <- (data - mean_value) / std_dev

# Print the results
cat("Min-Max Normalization:\n")
print(min_max_normalized)

cat("\nZ-score Normalization:\n")
print(z_score_normalized)