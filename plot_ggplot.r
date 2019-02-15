install.packages("ggplot2")
library(ggplot2)

data(diamonds)
head(diamonds)
summary(diamonds)

# 6.1 Histogram
hist(diamonds$carat, main="Carat Histogram", xlab="Carat")

plot(price ~ carat, data=diamonds)
plot(diamonds$carat, diamonds$price)

#6.2 Boxplots
boxplot(diamonds$carat)

#Histograms and Densities
ggplot(data=diamonds)+geom_histogram(aes(x=carat))
ggplot(data=diamonds)+geom_density(aes(x=carat), fill="grey50")

#Scatter plot
ggplot(diamonds, aes(x=carat, y=price)) + geom_point()

g <- ggplot(diamonds, aes(x=carat, y=price))
g+geom_point(aes(color=color))
g+geom_point(aes(color=color))+facet_wrap(~color)
g+geom_point(aes(color=color))+facet_wrap(cut ~ clarity)

ggplot(diamonds, aes(x=carat)) + geom_histogram() + facet_wrap(~color)
ggplot(diamonds, aes(y=carat, x=1)) + geom_boxplot()
ggplot(diamonds, aes(y=carat, x=cut)) + geom_boxplot()
ggplot(diamonds, aes(y=carat, x=cut)) + geom_violin()


ggplot(diamonds, aes(y=carat, x=cut))+geom_point()+geom_violin()
ggplot(diamonds, aes(y=carat, x=cut))+geom_violin()+geom_point()

ggplot(economics, aes(x=date,y=pop))+geom_line()
