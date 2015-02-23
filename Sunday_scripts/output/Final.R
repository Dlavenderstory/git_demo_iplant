
setwd("/home/dlavenderstory/R_Git_iPlant/Sunday_scripts/output/")
full<-read.table("combined_gapMinder.tsv",header = TRUE, sep = "\t")
#Look at the year-GDP relationship for China, India, and Chile

myset<-subset(full,country=="China"|country=="India"|country=="Chile")

GDP<-myset$gdpPercap*myset$pop
newset<-cbind(myset,GDP)
plot1<-ggplot(data = myset, aes(x = year, y = GDP, color = country))

plot1+geom_point(size = 2)


#Calculate the Stats for each continent
install.packages("doBy")
library(doBy)
summaryBy(lifeExp ~ continent, data = full, 
          FUN = list(mean, max, min))
ggplot(full, aes(x=lifeExp))+geom_histogram(fill = "steelblue", color = "black")

ggplot(full, aes(x=lifeExp))+geom_histogram(binwidth = 1, fill = "steelblue", color = "black")


