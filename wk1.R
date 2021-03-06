setwd("C:\\Users\\Ivan.Liuyanfeng\\Desktop\\Data_Mining_Work_Space\\Data-Science-Practical-Machine-Learning")
library(kernlab)
data(spam)
head(spam)
png('spam.png')
plot(density(spam$your[spam$type=='nonspam']),col='blue',main='',xlab='Frequency of "Your"')
lines(density(spam$your[spam$type=='spam']),col='red')
abline(v=.5, col='black')
dev.off()
prediction <- ifelse(spam$your>0.5,'spam','nonspam')
table(prediction,spam$type)/length(spam$type)
