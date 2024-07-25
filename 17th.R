# Load the mtcars dataset
data(mtcars)

# Create a plot with 'mpg' and 'qsec' as lines
plot(mtcars$mpg, type = "l", col = "blue", ylim = range(c(mtcars$mpg, mtcars$qsec)), xlab = "Index", ylab = "Values", main = "Line Chart of mpg and qsec")

# Add the second line for 'qsec'
lines(mtcars$qsec, col = "red")

# Add a legend
legend("topright", legend = c("mpg", "qsec"), col = c("blue", "red"), lty = 1)