
data = read.csv("AET_PIN_perlbench_SEP6.out")
data2 = read.csv("AET_PIN_DROP_10_perlbench_JAN21.out")
data3 = read.csv("test_data2.out")



plot(data,main = "perlbench",col=1,ylim = c(0,0.005),xlim = c(0,2e+05),lty=1, pch='.')


points(data2,col=2,lty=3, pch='.')
points(data3,col=3,lty=3, pch='.')

legend(150000,0.005,legend=c("original","10","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)



