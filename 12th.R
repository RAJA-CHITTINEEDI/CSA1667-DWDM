# Data
age_5_6 <- c(18, 22, 20)
age_7_8 <- c(2, 28, 40)
age_9_10 <- c(20, 10, 40)

# Combine data into a matrix
preferences <- rbind(age_5_6, age_7_8, age_9_10)
colnames(preferences) <- c("A", "B", "C")

# Calculate the sample covariance between B and C
cov_BC <- cov(preferences[, "B"], preferences[, "C"])
print(cov_BC)

# Calculate the sample covariance matrix for the preferences
cov_matrix <- cov(preferences)
print(cov_matrix)

# Calculate the sample correlation between B and C
cor_BC <- cor(preferences[, "B"], preferences[, "C"])
print(cor_BC)

# Calculate the sample correlation matrix for the preferences
cor_matrix <- cor(preferences)
print(cor_matrix)
