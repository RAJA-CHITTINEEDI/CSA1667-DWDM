# Load the AirPassengers dataset
data("AirPassengers")

# Create breaks for the histogram
breaks <- seq(100, 700, by=150)

# Create the histogram
hist(AirPassengers, 
     breaks = breaks, 
     main = "Histogram of AirPassengers Dataset", 
     xlab = "Number of Passengers", 
     ylab = "Frequency", 
     col = "lightblue", 
     border = "black")

# Add a grid for better visualization
grid()