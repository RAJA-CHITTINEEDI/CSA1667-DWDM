# Generate sample data (points scored by players)
set.seed(123)  # for reproducibility
points_scored <- c(30, 25, 35, 40, 42, 28, 36, 33, 31, 20, 50, 27, 38, 37, 22, 34, 29, 41, 26, 39, 100)

# Create a boxplot
boxplot(points_scored,
        main = "Distribution of Points Scored by Players",
        ylab = "Points Scored",
        ylim = c(0, 120),  # setting y-axis limits for better visualization
        col = "lightblue",  # color of the boxes
        border = "blue",    # color of the borders
        horizontal = TRUE)  # horizontal orientation for better space utilization

# Add a horizontal line for potential outliers (e.g., 1.5 * IQR above Q3)
boxplot.stats(points_scored)$out  # identify potential outliers
abline(h = boxplot.stats(points_scored)$out, col = "red", lty = 2)  # add dashed red line for outliers