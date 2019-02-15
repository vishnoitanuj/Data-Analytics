#-------------------------------------------------------------
# Step 7: Grid and a curve plotting
#-------------------------------------------------------------

x <- round(runif(13,min=-5, max=5),0) 
y <- round(runif(13,min=-5, max=5),0) 
z <- round(runif(13,min=-5, max=5),0) 

plot(z, type = "n")
grid(lty = 1, lwd = 2)
curve(x^2, col = "blue", add = TRUE)
curve(x^2 + 1, col = "blue", add = TRUE)
points(z^2, pch = 20)

#-------------------------------------------------------------
# Step 8: Grphical Parameters
#-------------------------------------------------------------

plot(z, type = "o", col = 'red', pch = 16, cex = 2)
plot(z, col = c('red', 'blue'), pch = "+", cex = 2)

#-------------------------------------------------------------
# Step 9: Colors Plotting
#-------------------------------------------------------------
colors()
palette() ## default palette
palette(sample(colors(), 10)) ## change palette
plot(runif(50), col = rep(1:10, each = 5), pch = 16, cex = 2)

#-------------------------------------------------------------
# Step 10: Histogram Plotting - Frequency Plotting
#-------------------------------------------------------------

# create a grouping variable of length 100
a <- factor(sample(1:5, 13, replace = TRUE), levels = 1:5)
a
levels(a) <- LETTERS[1:5]
a
plot(a)
plot(y ~ a)   # Box Plot


#-------------------------------------------------------------
# Step 11: Plotting of Data frames 
#-------------------------------------------------------------

# scatterplot matrix: a matrix of all pairwise bivariate scatterplots.
iris        # Dataset
head(iris)
class(iris)
plot(iris)
plot(iris[1:4], col = as.numeric(iris$Species)) # color by Species


#-------------------------------------------------------------
# Step 12: Function Plotting
#-------------------------------------------------------------
plot(sin, from = -2 * pi, to = 2 * pi)
plot(cos, from = -2 * pi, to = 2 * pi)

damped.sin <- function(x) sin(5 * x) * exp(-x^2) ## New function
class(damped.sin)
plot(damped.sin, from = -pi, to = pi)

