x1 <- rnorm(10,sd=2)
x1
x2 <- rnorm(10,sd=3)
x2
x3 <- rnorm(10,sd=4)
x3

#plot x1,x2,x3
df <- data.frame(x1,x2,x3)
plot(df[,1:3])