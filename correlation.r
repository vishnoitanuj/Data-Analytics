install.packages("ggplot2")
x <- c(2,7,2,4,1,8,2,4,2,8,-5,4,3)
y <- c(6,3,8,1,3,6,8,2,3,5,8,4,-6)
z <- round(runif(13,min=-10,max=10),0)

#variance
var(x,y)

#co-variance
cov(x,y,method="pearson")
cov(x,y,method="kendall")
cov(x,y,method="spearman")

#Correlation
cor(x,y,method="pearson")
cor(x,y,method="kendall")
cor(x,y,method="spearman")

#Pairwise
df <- data.frame(x,y,z)
pairCor <- cor(df,use="pairwise",method="pearson")
pairCor
install.packages("corrplot")
library(corrplot)
corrplot(pairCor)