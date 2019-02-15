x1<- c(2,1,5,1,5,6)
x2<-c(5,6,1,5,8,9)

u<-unique(x1) #display unique values
u
match(x1,u)

v<-tabulate(match(x1,u)) #occurance of each element through unique
which.max(v)  #first max frequency
which.min(v)
