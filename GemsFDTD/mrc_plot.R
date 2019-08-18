
data = read.csv("AET_PIN_GemsFDTD_SEP15.out")
data2 = read.csv("AET_PIN_DROP_25_GemsFDTD_SEP15.out")

data3 = read.csv("AET_PIN_DROP_50_GemsFDTD_SEP15.out")
data4 = read.csv("AET_PIN_DROP_GemsFDTD_SEP15.out")

plot(data,main = "GemsFDTD",xlim=c(0,1.4e+07),ylim = c(0, 0.2),lty=1, pch=20)

points(data2,col="red",lty=2, pch=20)
points(data3,col="green",lty=3, pch=20)
points(data4,col="blue",lty=4, pch=20)
legend(9e+06,0.2,legend=c("original","25","50","dropped"), 
col=c("black","red","green","blue"), pch=c(0,1,2,3), ncol=1)
#plot(data2,main = "GemsFDTD_25")
#plot(data3,main = "GemsFDTD_50")
#plot(data4,main = "GemsFDTD_DROP")
