getweather=function(FILE,LABEL) {
  title=c("芠代丁","代溃","溃", "代程蔼溃",
          "代程蔼溃丁","代程溃", "代程溃丁",
          "放","程蔼放","程蔼放丁", "程放","程放丁",
          "臩翴放","癸访", "程癸访","程癸访丁",
          "硉","", "程皚","程皚",
          "程皚硉丁","秖","计",
          "芠代10だ牧程秖","芠代10だ牧程癬﹍丁","程秖",
          "程秖癬﹍丁","ら酚计","ら酚瞯",
          "ぱら甮秖","ǎ","A籡祇秖")
  x=read.csv(FILE,skip=1,header=F)
  names(x) = title; y=x[,c(1,2,8,9,11,14)];
  y['label']=LABEL; return (y) ; }
sep = getweather('201709.csv', '201709')
par(mar=c(5,4,4,2)+1)

jul = getweather('201707.csv', '201707')
aug = getweather('201708.csv', '201708')
sep = getweather('201709.csv', '201709')
oct = getweather('201710.csv', '201710')
nov = getweather('201711.csv', '201711')
dec = getweather('201712.csv', '201712')

w2017=rbind(jul,aug,sep,oct,nov,dec)
table(w2017$label)
plot(放~label,w2017,las=1)

boxplot(jul[,c(3,4,5)],ylab="放" ,xlab="201707", las=1)
boxplot(aug[,c(3,4,5)],ylab="放" ,xlab="201708", las=1)
boxplot(sep[,c(3,4,5)],ylab="放" ,xlab="201709", las=1)
boxplot(oct[,c(3,4,5)],ylab="放" ,xlab="201710", las=1)
boxplot(nov[,c(3,4,5)],ylab="放" ,xlab="201711", las=1)
boxplot(dec[,c(3,4,5)],ylab="放" ,xlab="201712", las=1)

plot(dec$放,type="b", pch=16, col="black",las=1,xlab="ら戳" ,
     ylab="放",,main="2017/12", axes=TRUE)

number = c(1:13,1:13,1:13,1:13)
number1=rep(1:13,4)
identical(number,number1)
suit = c(rep("堵",13),rep("み",13),rep("よ遏",13),rep("宾",13))
cards = paste(suit,number)
sample(cards,5)
paste(sample(1:6,1,sample(1:6,1),sample(1:6,1)))

