
setwd('..')
setwd('Downloads')
list.files()
pf<- read.csv("pseudo_facebook.tsv", sep = '\t')
names(pf)
summary(log10(pf$friend_count+1))
p1= qplot(x=friend_count, data=pf, binwidth=100)
p2=qplot(x=log10(pf$friend_count+1), data=pf)
p3=qplot(x=sqrt(friend_count), data = pf)


install.packages('gridExtra')
library(gridExtra)
grid.arrange(p1, p2, p1, ncol=1)

#on likes freqpoly
qplot(x=www_likes, data=subset(pf,!is.na(gender)), geom = 'freqpoly', color= gender,
  xlab='likes', ylab='portion') + 
  scale_x_continuous() +scale_x_log10()
by(pf$www_likes, pf$gender, sum)

library(ggplot2) 
  ggplot(aes(x = friend_count, y = ..count../sum(..count..)),
         data = subset(pf, !is.na(gender))) +
    geom_freqpoly(aes(color = gender), binwidth=10) +
    scale_x_continuous(limits = c(0, 1000), breaks = seq(0, 1000, 50)) +
    xlab('Friend Count') +
    ylab('Proportion of users with that friend count')
  
  
qplot(x=gender, y=friend_count, data=subset(pf, !is.na(gender)), ylim = c(0,1000), geom='boxplot')
qplot(x=gender, y=friend_count, data=subset(pf, !is.na(gender)), geom='boxplot')+ coord_cartesian(ylim=c(0,1000))
names(pf)
by(pf$friend_count, pf$gender, summary)
by(pf$friendships_initiated, pf$gender, summary)

mobile_check_in <- NA
summary(pf$mobile_likes)
pf$mobile_check_in <- ifelse(pf$mobile_likes >0, 1, 0)
pf$mobile_check_in <- factor(pf$mobile_check_in)
summary(pf$mobile_check_in)
pf$mobile_likes
summary(pf$mobile_likes)
