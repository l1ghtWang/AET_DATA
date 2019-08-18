

data = read.csv("AET_PIN_tonto_SEP12.out")
data2 = read.csv("AET_PIN_DROP_25_tonto_SEP12.out")

data3 = read.csv("AET_PIN_DROP_50_tonto_SEP12.out")
data4 = read.csv("AET_PIN_DROP_tonto_SEP12.out")

plot(data,main = "tonto",ylim = c(0,0.04),lty=1, pch=20)

points(data2,col="red",lty=2, pch=20)
points(data3,col="green",lty=3, pch=20)
points(data4,col="blue",lty=4, pch=20)
legend(6e+05,0.02,legend=c("original","25","50","dropped"), 
col=c("black","red","green","blue"), pch=c(0,1,2,3), ncol=1)

