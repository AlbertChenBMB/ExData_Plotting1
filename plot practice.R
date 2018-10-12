#plotting average acceleration for first subject
par(mfrow=c(1,2),mar=c(5,4,1,1))
samsungData<- transform(dataset,activity=factor(activity))
sub1<-subset(samsungData,subject==1)

plot(sub1[,1],col=sub1$activity,ylab = names(sub1)[1])
plot(sub1[,2],col=sub1$activity,ylab = names(sub1)[2])
legend("bottomright",legend = unique(sub1$activity),col=unique(sub1$avtivity),pch=1)
#cplotting max acceleration for the first subject
par(mfrow=c(1,2))
plot(sub1[,10],pch=19,col=sub1$activity,ylab = names(sub1[10]))
plot(sub1[,11],pch=19,col=sub1$activity,ylab = names(sub1[11]))

#singluar value decomposition
svd1<-svd(scale(sub1[,-c(562,563)]))
par(mfrow=c(1,2))
plot(svd1$u[,1],col=sub1$activity,pch=19)
plot(svd1$u[,2],col=sub1$activity,pch=19)
#find maximum contributor
plot(svd1$v[,2],pch=19)

