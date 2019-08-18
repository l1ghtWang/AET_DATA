
data = read.csv("AET_PIN_lbm_AUG08.out")
data2 = read.csv("AET_PIN_DROP_25_lbm_AUG08.out")

data3 = read.csv("AET_PIN_DROP_50_lbm_SEP18.out")
data4 = read.csv("AET_PIN_DROP_lbm_AUG08.out")

plot(data,main = "lbm",lty=1, pch=20)

points(data2,col="red",lty=2, pch=20)
points(data3,col="green",lty=3, pch=20)
points(data4,col="blue",lty=4, pch=20)
legend(9e+06,0.2,legend=c("original","25","50","dropped"), 
col=c("black","red","green","blue"), pch=c(0,1,2,3), ncol=1)

