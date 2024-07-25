# Data
data <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization
min_val <- min(data)
max_val <- max(data)
min_max_normalized <- (data - min_val) / (max_val - min_val)

# (b) Z-Score Normalization
mean_val <- mean(data)
sd_val <- sd(data)
z_score_normalized <- (data - mean_val) / sd_val

# Print the results
cat("Original Data:", data, "\n\n")

cat("(a) Min-Max Normalization (min=0, max=1):\n")
print(min_max_normalized)

cat("\n(b) Z-Score Normalization:\n")
print(z_score_normalized)