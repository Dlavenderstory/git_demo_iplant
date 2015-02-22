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


myplot <-ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width))

myplot+geom_point()

summary(myplot)