#install.packages("SDMTools")
#install.packages("pROC")

library(SDMTools)
s9234df <- read.csv("s9234.csv")
s9234df <- s9234df[s9234df$FT == "DS", ]
s9234df$pred <- ifelse((s9234df$MC >0), 1, 0)
s9234df$obs <- ifelse((s9234df$GS >0), 1, 0)
s9234confmat <- confusion.matrix(s9234df$obs, s9234df$pred, threshold =0.5)
s9234acc <- accuracy(s9234df$obs, s9234df$pred, threshold =0.5)
s9234confmat
s9234acc

desdf <- read.csv("des.csv")
desdf$pred <- ifelse(desdf$MC >0, 1, 0)
desdf$obs <- ifelse(desdf$GS >0, 1, 0)
desconfmat <- confusion.matrix(desdf$obs, desdf$pred, threshold =0.5)
desacc <- accuracy(desdf$obs, desdf$pred, threshold =0.5)
desconfmat
desacc