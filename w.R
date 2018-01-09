getweather=function(FILE,LABEL) {
  title=c("�[���ɶ�","��������","��������", "�����̰�����",
          "�����̰������ɶ�","�����̧C����", "�����̧C�����ɶ�",
          "���","�̰����","�̰���Ůɶ�", "�̧C���","�̧C��Ůɶ�",
          "�S�I�ū�","�۹�ë�", "�̤p�۹�ë�","�̤p�۹�ë׮ɶ�",
          "���t","���V", "�̤j�}��","�̤j�}�����V",
          "�̤j�}�����t�ɶ�","�����q","�����ɼ�",
          "�[��10�����̤j�����q","�[��10�����̤j�����_�l�ɶ�","�@�p�ɳ̤j�����q",
          "�@�p�ɳ̤j�����q�_�l�ɶ�","��Ӯɼ�","��Ӳv",
          "���ѪŤ�g�q","�ਣ��","A���]�o�q")
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
plot(���~label,w2017,las=1)

boxplot(jul[,c(3,4,5)],ylab="���" ,xlab="201707", las=1)
boxplot(aug[,c(3,4,5)],ylab="���" ,xlab="201708", las=1)
boxplot(sep[,c(3,4,5)],ylab="���" ,xlab="201709", las=1)
boxplot(oct[,c(3,4,5)],ylab="���" ,xlab="201710", las=1)
boxplot(nov[,c(3,4,5)],ylab="���" ,xlab="201711", las=1)
boxplot(dec[,c(3,4,5)],ylab="���" ,xlab="201712", las=1)

plot(dec$���,type="b", pch=16, col="black",las=1,xlab="���" ,
     ylab="���",,main="2017/12", axes=TRUE)

number = c(1:13,1:13,1:13,1:13)
number1=rep(1:13,4)
identical(number,number1)
suit = c(rep("�®�",13),rep("����",13),rep("���",13),rep("����",13))
cards = paste(suit,number)
sample(cards,5)
paste(sample(1:6,1,sample(1:6,1),sample(1:6,1)))
