
args <- commandArgs(TRUE)

if (length(args)==1) {
  section <- args[1]
}else{
  section <-5
}
benchmark <- "gcc"

data = read.csv("AET_PIN_gcc_AUG25.out")
data1 = read.csv("AET_PIN_DROP_10_gcc_JAN21.out")
data2 = read.csv("AET_PIN_DROP_25_gcc_AUG25.out")
data3 = read.csv("AET_PIN_DROP_40_gcc_JAN21.out")
data4 = read.csv("AET_PIN_DROP_50_gcc_AUG25.out")
data5 = read.csv("AET_PIN_DROP_60_gcc_JAN21.out")
data6 = read.csv("AET_PIN_DROP_gcc_AUG25.out")
data7 = read.csv("AET_PIN_DROP_90_gcc_JAN21.out")

inFile1 = paste(benchmark,"_",section,"section_restored_10.out", sep="")
inFile2 = paste(benchmark,"_",section,"section_restored_25.out", sep="")

inFile3 = paste(benchmark,"_",section,"section_restored_40.out", sep="")
inFile4 = paste(benchmark,"_",section,"section_restored_50.out", sep="")

inFile5 = paste(benchmark,"_",section,"section_restored_60.out", sep="")
inFile6 = paste(benchmark,"_",section,"section_restored_drop.out", sep="")

inFile7 = paste(benchmark,"_",section,"section_restored_90.out", sep="")


DATA1 = read.csv(inFile1)
DATA2 = read.csv(inFile2)
DATA3 = read.csv(inFile3)
DATA4 = read.csv(inFile4)
DATA5 = read.csv(inFile5)
DATA6 = read.csv(inFile6)
DATA7 = read.csv(inFile7)

pdf(file=paste(benchmark,"_mrc.pdf",sep=""))
plot(data,main = benchmark,col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data1,col=2,lty=2, pch='.')
points(data2,col=3,lty=3, pch='.')
points(data3,col=4,lty=4, pch='.')
points(data4,col=5,lty=5, pch='.')
points(data5,col=6,lty=6, pch='.')
points(data6,col=7,lty=7, pch='.')
points(data6,col=8,lty=8, pch='.')
legend(80000,0.060,legend=c("original","10","25","40","50","60","dropped","90"), 
       col=c(1,2,3,4,5,6,7,8), pch=c(16,16,16,16,16,16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D10_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D10_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data1,col=2,lty=3, pch='.')
points(DATA1,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D10","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D25_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D25_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data2,col=2,lty=3, pch='.')
points(DATA2,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D25","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D40_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D40_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data3,col=2,lty=3, pch='.')
points(DATA3,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D40","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D50_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D50_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data4,col=2,lty=3, pch='.')
points(DATA4,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D50","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D60_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D60_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data5,col=2,lty=3, pch='.')
points(DATA6,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D60","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_Drop_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_drop_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data6,col=2,lty=3, pch='.')
points(DATA6,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","Drop","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()

pdf(file=paste(benchmark,"_",section,"section_D90_restore.pdf",sep=""))
plot(data,main = paste(benchmark,"_",section,"section_D90_restore",sep = ""),col=1,ylim = c(0,0.12),xlim = c(0,150000),lty=1, pch='.')
points(data7,col=2,lty=3, pch='.')
points(DATA7,col=3,lty=3, pch='.')
legend(80000,0.060,legend=c("original","D90","restored"), 
       col=c(1,2,3), pch=c(16,16,16), ncol=1)
dev.off()


