# Define the data
age <- c("5-6 years", "7-8 years", "9-10 years")
A <- c(18, 2, 20)
B <- c(22, 28, 10)
C <- c(20, 40, 40)

# Create a matrix of preferences
preferences <- matrix(c(A, B, C), nrow = 3, byrow = TRUE)

# Calculate covariance between B and C
cov_BC <- cov(B, C)
cat("Sample covariance between B and C:\n")
print(cov_BC)

# Calculate covariance matrix for preferences
cov_matrix <- cov(preferences)
cat("\nSample covariance matrix for preferences:\n")
print(cov_matrix)

# Calculate correlation between B and C
cor_BC <- cor(B, C)
cat("\nSample correlation between B and C:\n")
print(cor_BC)

# Calculate correlation matrix for preferences
cor_matrix <- cor(preferences)
cat("\nSample correlation matrix for preferences:\n")
print(cor_matrix)