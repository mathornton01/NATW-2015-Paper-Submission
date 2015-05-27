s9234df <- read.csv("s9234.csv")
s9234df <- s9234df[s9234df$FT == "DS", ]
s9234lm <- lm(s9234df$GS~s9234df$MC)
#png("s9234linereg.png")
plot(x=s9234df$MC, y=s9234df$GS, main="Linear Regression Model for s9234", xlab="Mandatory Counts", ylab="Goodstate Detections")
abline(s9234lm)
#dev.off()
cor(s9234df$MC, s9234df$GS)



desdf <- read.csv("des.csv")
desdf <- desdf[desdf$MC < 12000, ]
deslm <- lm(desdf$GS~desdf$MC)
png("deslinereg.png")
plot(x=desdf$MC, y=desdf$GS, main="Linear Regression Model for DES56", xlab="Mandatory Counts", ylab="Goodstate Detections")
abline(deslm)
dev.off()
cor(desdf$MC, desdf$GS)