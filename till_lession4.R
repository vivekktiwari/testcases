library(ggplot2)
data(diamonds)
NAMES(DIAMONDS)
names(diamonds)
qplot(x=diamonds$price, data=diamonds, geom ='freqpoly')+scale_x_continuous(limits=c(0, 1000), breaks = 0:1000)+facet_wrap(~diamonds$cut)
ggsave('priceHistrogram.png')
summary(diamonds$price)

qplot(x=diamonds$price, data=subset(diamonds, !is.na(diamonds), geom= 'boxplot')+ scale_x_continuous(limits = c(0,19000), breaks=seq(500, 19000, 400))+facet_wrap(~diamonds$cut)

ggsave('price2Histogram.png')
names(diamonds)
diamonds$cut
boxplot(x=diamonds$price, data=diamonds)
?boxplot
??freqploy
by(diamonds$price, diamonds$color, summary)
qplot(y = diamonds$price, x=diamonds$carat, data = diamonds, scales="free") +geom_boxplot(color="Green")+ facet_wrap(~cut, scales = "free")
summary(diamonds$color)
summary(diamonds$clarity)

qplot(x = clarity, y = price,        data =diamonds,      geom = 'boxplot')+ scale_y_continuous(breaks = seq(0:20000:10000))

#qplot(x = clarity, y = price, data = diamonds, geom = 'boxplot') +
#  coord_cartesian(ylim = c(0, 7000))
??colors
IQR(subset(diamonds,color=="J")$price)

levels(diamonds$color)
help(diamonds)

?color
qplot(y = diamonds$price, x=diamonds$carat, data = diamonds) +geom_boxplot(color="Green")+ facet_wrap(~color, scales = "free")
qplot(y=diamonds$price, x=diamonds$carat, data=subset(diamonds, color="D"))+geom_boxplot(color="Blue")
qplot(y=diamonds$price, x=diamonds$carat, data=subset(diamonds, color="E"))+geom_boxplot(color="Blue")
qplot(y=diamonds$price, x=diamonds$carat, data=subset(diamonds, color="G"))+geom_boxplot(color="Yellow")

qplot(x=carat, data=diamonds)+geom_freqpoly(binwidth=0.000005)+scale_y_continuous()+xlim(0, 2)
?ylim
summary(diamonds$carat)
by(diamonds$)
diamonds$table
summary(diamonds$table)

??xlsx
install.packages("devtools")
library(EDAWR)
?pollution
install.packages("tidyr")
library(tidyr)
pollution
cases
p<- gather(cases, "year", "n", 2:4)
spread(p, year, n)
GETWD()
getwd()
setwd('..')
setwd('Downloads')
list.files()
fd <- read.csv('indicator_t above 15 employ.csv', sep = ',')
names(fd)
summary(fd)
ggplot(fd, aes(x=fd$X1991, y=fd$Total.above.15.employment.to.population....))+
  geom_histogram(scales='free', color="green", fill="Red")+xlab("Total Count") +ylab("Year")

ggplot(fd, aes(x=fd$X1992, y=fd$Total.above.15.employment.to.population....))+
  geom_polygon(scales='free', color="yellow", fill="Orange")+xlab("Total Count") +ylab("Year")

ggplot(fd, aes(x=fd$Total.above.15.employment.to.population...., y=fd$X1995))+
  geom_boxplot(color="red", fill="Orange")+xlab("Total Count") +ylab("Year")

qplot(x=fd$Total.above.15.employment.to.population...., y=fd$X1991, data=fd, geom="histogram")
fdd<- read.csv('vi.csv', sep = ',')
names(fdd)
??lubridate
install.packages('lubridate')
??striptime
library(lubridate)
yy<-year(dmy(fdd$Start.Date))
d <- c(day(fdd$Start.Date))
d <- day(dmy(fdd$Start.Date))
if()
table(d)
summary(d)
summary(yy)
