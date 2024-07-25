# Load the mtcars dataset (if not already loaded)
data(mtcars)

# Extract mpg and qsec columns from mtcars``
mpg_values <- mtcars$mpg
qsec_values <- mtcars$qsec

# Plot the first line (mpg)
plot(mpg_values, type = "o", col = "blue", ylim = range(c(mpg_values, qsec_values)),
     xlab = "Index", ylab = "Values", main = "Multiple Lines in Line Chart")

# Add the second line (qsec)
lines(qsec_values, type = "o", col = "red")

# Add legend
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), lty = 1)