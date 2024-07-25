# Define the scores for Class A and Class B
scores_A <- c(76, 35, 47, 64, 95, 66, 89, 36, 84)
scores_B <- c(51, 56, 84, 60, 59, 70, 63, 66, 50)

# (i) Calculate mean, median, and range
mean_A <- mean(scores_A)
median_A <- median(scores_A)
range_A <- max(scores_A) - min(scores_A)

mean_B <- mean(scores_B)
median_B <- median(scores_B)
range_B <- max(scores_B) - min(scores_B)

# Print the results
cat("Class A:\n")
cat("Mean:", mean_A, "\n")
cat("Median:", median_A, "\n")
cat("Range:", range_A, "\n\n")

cat("Class B:\n")
cat("Mean:", mean_B, "\n")
cat("Median:", median_B, "\n")
cat("Range:", range_B, "\n")

# (ii) Plot boxplot
boxplot(scores_A, scores_B, 
        names = c("Class A", "Class B"),
        main = "Boxplot of Exam Scores",
        xlab = "Class", ylab = "Scores",
        col = c("lightblue", "lightgreen"),
        border = "black")