install.packages("lubridate")
install.packages("scales")
install.packages("rJava")

library(lubridate)
library(scales)
economics$year <- year(economics$date)
economics$month <- month(economics$date, label=TRUE)
econ2000 <- economics[which(economics$year >= 2000), ]

# build the foundation of the plot
g <- ggplot(econ2000, aes(x=month, y=pop))
# add lines color coded and grouped by year
# the group aesthetic breaks the data into separate groups
g <- g + geom_line(aes(color=factor(year), group=year))

# name the legend "Year"
g <- g + scale_color_discrete(name="Year")

# format the y axis
g <- g + scale_y_continuous(labels=comma)

g <- g + labs(title="Population Growth", x="Month", y="Population")

g


install.packages("ggthemes")
library(ggthemes)
# build a plot and store it in g2
g2 <- ggplot(diamonds, aes(x=carat, y=price)) + geom_point(aes(color=color))
# apply a few themes
g2 + theme_economist() + scale_colour_economist()
g2 + theme_excel() + scale_colour_excel()
g2 + theme_tufte()
g2 + theme_wsj()


