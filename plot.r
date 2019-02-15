x <- runif(100, min=1, max=5)
x
y <- x^2 + runif(100)
y

plot(x)
plot(x, main="X-axis")
plot(x, main="X data", xlab="X Axis", ylab="Y Axis")

plot(x,y, main="Scatter plot",xlab="X axis", ylab="Y axis")
png(filename="/home/vishnoitanuj/Desktop/DataAnalytics/plot/plot.png")
plot(x,y,main="Scatter plot", xlab="X axis", ylab="Y axis")
dev.off()
