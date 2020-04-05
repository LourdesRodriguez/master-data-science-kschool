#Plots
#Añadir un nuevo punto al gráfico
#par(new=T) para que dibuje en el mismo plot pero me cambia los ejes
#Deberíamos especificarlo antes
#xlim=c(0,1300), ylim=c(o,500),xlab="total",ylab="population")

#EN este caso lo ideal es hacerlo con plot
#points(200,0,pch="o")
#plot(200,0,pch="o")

#HISTOGRAMA
# Se están dejando de utilizar
# El número de bins=intervalos es muy aleatorio
# Densidad frecuencia/numero de individuos se calcula añadiendo freq=F
hist(murders$total,freq = F)

#Si es una imagen fija no se recomienda en 3D, si es un video sí

#BOXPLOT
# Mediana linea central negra. Q2
# Extremos de la caja empezando por la parte inferior Q1 y Q3
# Estadistica no parametrica? Nos basamos en el orden (IQR =Q3-Q1) medida dispersion
# Estadistica parametrica (media y std)
boxplot(murders$total)
summary(murders$total)
IQR(murders$total)
# La parte final se calcula 1.5*IQR+Q3. Mirar??
# buscamos lo que quedan fuera
which(murders$total>600)
murders[murders$total>600,]
boxplot(murders$total~murders$region)

#BABIES
#Relacion entre el peso y edad gestacional
# Distribución de pesos de bebes de madres fumadoras/no en un boxplot

babies<-read.delim("babies.txt",header = T, sep="\t", stringsAsFactors = F)

#Quitamos los outliers
babies$gestation[which(babies$gestation=='999')]=NA
plot(babies$gestation,babies$bwt)

#Obtenemos los valores para calcular ma muestra
summary(lm(bwt~gestation,data=babies))

lm(bwt~gestation, data=babies)
abiline(a=-10...)

#Relacion de pesos madres fumadoras/no
 babies$smoke[which(babies$smoke=='9')]=NA
 boxplot(bwt$smoke,data=babies)

# QQPLOT
# Representa nuestros datos en función de los Q(linea)
 
 
#Variables dummy?
# Mostrar si existe alguna relación entre el bugget y el rating
 
 
m <- movies%>%filter(length>=60 & !is.na(budget))%>% ggplot()+geom_point(aes(x=rating, y=budget/10^6,col=year))+geom_histogram(aes(rating),fill="blue",alpha=0.2)
m

tidy_data<- life%>%
  pivot_longer(-country,
                names_to=c("year","variable"),
                 names_pattern="(.{4})_(.*)",
                 names_ptypes = list(year = integer()), 
               values_to="value")

tidy_data2 <- tidy_data %>%pivot_wider(everything(),names_from = variable,values_from = value)

#gapminder
years <- c(1962,1980,1990,2000,2012)
continents <- c("Europe","Asia")
gapminder%>%filter(year %in% years & continent %in% continents)%>%
  ggplot(aes(fertility,life_expectancy,col=continent))+
  geom_point()+
  facet_wrap(~year)

