# Scores for Class A and Class B
scores_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
scores_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# Calculate mean, median, and range for Class A
mean_A <- mean(scores_A)
median_A <- median(scores_A)
range_A <- range(scores_A)
range_A_diff <- diff(range_A)

# Calculate mean, median, and range for Class B
mean_B <- mean(scores_B)
median_B <- median(scores_B)
range_B <- range(scores_B)
range_B_diff <- diff(range_B)

# Print the results
cat("Class A:\n")
cat("Mean:", mean_A, "\n")
cat("Median:", median_A, "\n")
cat("Range:", range_A_diff, "\n\n")

cat("Class B:\n")
cat("Mean:", mean_B, "\n")
cat("Median:", median_B, "\n")
cat("Range:", range_B_diff, "\n")

# Create boxplots
boxplot(scores_A, scores_B, 
        names = c("Class A", "Class B"), 
        main = "Boxplot of Scores for Class A and Class B", 
        ylab = "Scores",
        col = c("lightblue", "lightgreen"))

# Add a grid
grid()