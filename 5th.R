# Load the AirPassengers dataset
data("AirPassengers")

# Define the histogram breaks
breaks <- seq(100, 700, by = 150)

# Plot the histogram
hist(AirPassengers, breaks = breaks, 
     main = "Histogram of AirPassengers Dataset",
     xlab = "Passenger Count", ylab = "Frequency",
     col = "skyblue", border = "black")