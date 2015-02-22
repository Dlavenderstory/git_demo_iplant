#ggplot learning script

install.packages("ggplot2", dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library(ggplot2)
library(plyr)
library(ggthemes)
library(reshape2)

head(iris)

ddply(iris, .(Species), summarize, mean.Sep.Wid = mean())

df <- melt(iris, id.vars = "Species")
df[1:2,]

dcast(df,Species ~ variable, mean)


myplot <-ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species))

myplot+geom_point(aes(shape = Species), size = 3)

d2 <- diamonds[sample(1:dim(diamonds)[1], 1000), ]
myplot2<-ggplot(data = d2, aes(carat, price,color = color))
myplot2+geom_point(size = 2)

library(MASS)
ggplot(birthwt, aes(factor(race), bwt))+geom_boxplot()

head(birthwt)
ggplot()

summary(myplot)