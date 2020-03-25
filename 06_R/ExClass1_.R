sessionInfo()
getwd()
setwd("~/Documents/20200207")
a<-850*1.2
2*a
b<-((5+2)*3)-6*3
b<-(((5+2)*3)-6)*3
a<-850*1.21
b4<-b3/3
b<-2
b1<-b+2
b2<-b1*3
b3<-b2-6
b4<-b3/3
10+
25 % 2
10/2
1:6
dado<-1:6
length(dado)
? length
is.vector(dado)
typeof(dado)
y<-c(1,3,5)
z<-c("Hello","Bye")
z
z[1]
z[2]
x<-c(TRUE,FALSE,TRUE)
x[1]
x<-c(1L,-1L,2L
)
x<-c(1L,-1L,2L)
x
dado*2
dado+2
dado/3
dado%*%dado
dado%o%dado
dado*dado
sqrt(2)^2-2
1<2
x<-c(1<2,1>2)
x
mano<-c("asoro","asbastos","asespadas","ascopas")
mano
length(mano)
typeof(mano)
mano[1]
mano2<-("4oros","5bastos","3espadas","7copas")
mano2<-c("4oros","5bastos","3espadas","7copas")
mano2
jugada<-cbind(mano,mano2)
typeof(jugada)
jugada[1,]
jugada[1,1:2]
jugada[,1]
jugada[1,"mano"]
dim(jugada)
colnames(jugada)
row.names(jugada)<-1:4
rownames(jugada)
ar<-array(c(11:14,21:24,31:34))
ar<-array(c(11:14,21:24,31:34))
ar
ar<-array(c(11:14,21:24,31:34)),dim(2,2,3))
ar<-array(c(11:14,21:24,31:34),dim=c(2,2,3))
ar
m<-matrix(c(11:14,21:24,31:34),nrow=4,byrow = T)
m
m<-matrix(c(11:14,21:24,31:34),nrow=3,byrow = T)
m
m<-matrix(c(11:14,21:24,31:34),nrow=5,byrow = T)
m
dado +1:4
2+2
?rep
palo<-rep(c("O","B","E","C"),each=10)
palo
numero<-rep(c(1:7,10:12),4)
numero
puntos<-rep(c(11,0,10,rep(0,4),7,8,9),4)
puntos
baraja<-data.frame(numero,palo,puntos)
str(varaja)
str(baraja)
baraja<-data.frame(numero,palo,puntos, stringsAsFactors = F)
baraja$palo
baraja$palo[1]+baraja$palo[2]
baraja[1,]
baraja[3,]
baraja.list<-list(numeros=c(1:7,10:12),
palos=c("O","C","B","E"),
puntuaciones=c(1,0,11))
baraja.list
baraja$puntos.suma()
suma(baraja$puntos)
sum((baraja$puntos))
baraja[1:5,]
baraja[baraja$puntos==11,]
View(baraja)
baraja$puntos==11
i<-baraja$puntos==11
i
baraja[i,]
which(baraja$puntos==11)
baraja[which(baraja$puntos==11)]
baraja[baraja$puntos==11,]
baraja[baraja$puntos==11,-1]
baraja2<-baraja
baraja2$puntos[baraja$numero==1]
baraja2$puntos[baraja$numero==1]<-0
baraja2
baraja2$puntos[baraja$numero==1]<-0
baraja2$puntos[baraja$numero==1]
baraja2$puntos[baraja$numero==1,]
baraja2[baraja$numero==1,]
dado
sample(dado,1)
sample(dado,1)
sample(dado,1)
throw<-fuction(dado){return(sample(dado,1))}
throw<-function(dado){}
throw<-function(dado){
new.y<-sample(dado,1)
return(new.y)}
throw(dado)
throw<-function(){
dado<-rep(1,6)
return(sample(dado,1))
}
throw()
throw()
braja3<-baraja
sample(baraja3$numero,40)
sample(baraja3$numero,40)
baraja3
sample(braja3$numero,40)
shuffle<-function(baraja3){
return(sample(baraja3$numero,40))
}
shuffle(baraja3)
shuffle(braja3)
braja3
shuffle(braja3)
baraja3<-braja3
View(braja3)
View(baraja3)
shuffle(baraja3)
View(braja3)
rm(list = "braja3")
return(barajaS)
shuffle2<-function(){
baraja<-baraja[saple(1:40,40),]
return(barajaS)
}
shuffle2(baraja3)
baraja.shuffle<-suffle()
shuffle2<-function(){
baraja<-baraja[saple(1:40,40),]
return(baraja)
}
shuffle2(baraja3)
shuffle2<-function(){
barajaS<-baraja[saple(1:40,40),]
return(barajaS)
}
shuffle2(baraja3)
baraja3
baraja.shuffle2()<-shuffle2()
shuffle2<-function(){
barajaS<-baraja[sample(1:40,40),]
return(barajaS)
}
baraja.shuffle2()<-shuffle2()
shuffle2<-function(){
barajaS<-baraja[sample(1:40,40),]
return(barajaS)
}
shuffle2(baraja3)
c(1,2,3) %in% 1:2
1:3 == 1:2
baraja$numero
baraja3
baraja3[baraja3$puntos<=10,]
baraja3$puntos>=10
baraja3[baraja3$puntos>=10]
baraja3[baraja3$puntos>=10,]
baraja3$numero %in% c(1,3)
ix<-baraja3$numero %in% c(1,3)
baraja3$puntos[ix]<-0
View(baraja3)
head(baraja3)
knitr::opts_chunk$set(echo = TRUE)
1+2
1-2
1/(1-2)
a <- c(1, 2, 3)
b <- c(1, 2, 3)
c <- c(1, 2, 4)
a==b
a==c
a==b & a==c
baraja$numero==10 & baraja$palo=="O"
baraja[baraja$numero==10 & baraja$palo=="O"]
baraja$numero==1 & baraja$palo=="O"
baraja[baraja$numero==1 & baraja$palo=="O",]
w<-c(-1,0,1)
w>0
x<-c(5,15)
x>10 & x<200
x>10 & x<20
any(x>10,x<200)
all(x>10,x<200)
y<-"February"
y=="February"
z<-c("M","T")
weekdays
wkd<-c("M","T","X","Th","Fr")
z %in% wkd
all(z%in% wkd)
mean(c(1,2,3,NA),na.rm=T)
mean(c(1,2,3,NA))
is.na(c(1,2,3,NA))
x<-c(1,2,3,NA)
!is.na(x)
? mtcars
data("mtcars")
View(mtcars)
str()
str(mtcars)
mtcars$cyl
mtcars$cyl==4
mtcars[mtcars$cyl==4,]
rownames(mtcars)[mtcars==4]
rownames(mtcars)[mtcars==4,]
rownames(mtcars)[mtcars$cyl==4,]
sum(mtcars$cyl==4)
dim(mtcars[mtcars$cyl==4,])
dim(mtcars[mtcars$cyl==4,])[1]
which(mtcars$cyl==4)
length(which(mtcars$cyl==4))
rownames(mtcars)[mtcars$cyl==4]
rownames(mtcars)[mtcars$cyl>4]
ength(which(mtcars$cyl>4))
length(which(mtcars$cyl>4))
rownames(mtcars)[mtcars$cyl>4]&[mtcars$am==1]
rownames(mtcars)[mtcars$cyl>4 & mtcars$am==1]
length(which(mtcars$cyl>4 & mtcars$am==1))
length(which(mtcars$cyl>4 & mtcars$am==0))
rownames(mtcars)[mtcars$cyl>4 & mtcars$am==0]
sum(mtcars$am>4 & mtcars$am==0)
mean(mtcars$mpg[mtcars$cyl>4 & mtcars$am==0])
mean(mtcars$mpg[mtcars$cyl>4 & mtcars$am==1])
savehistory("~/Documents/20200207/20200207_Clase_v.R")
