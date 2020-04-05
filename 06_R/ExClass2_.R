babies<-read.delim("babies.txt",header = T, sep="\t", stringsAsFactors = F)
head(babies) #Leemos la cabecera del fichero
str(babies) #Visibilizamos las variables

# Calculamos la media del peso del bebe en relación con madre fumadora y no fumadora
# Seleccionamos la variable

babies$smoke==0
babies$bwt[babies$smoke==0]
mean(babies$bwt[babies$smoke==0])
# Otra forma de hacerlo
mean(babies[babies$smoke==0, "bwt"])
mean(babies[babies$smoke==0,1])

# Madre fumadoras
mean(babies[babies$smoke==1,1])

# Trabajamos con DF Gapminder
# Trabajamos con el paquete Tidyverse(deeplayer)
# El objeto siempre es el primer argumento, al especificarlo ya no es necesario
# especificarlo de nuevo.
# Filter: Filtrar filas, me pide un logico de T/F para las filas que me quiero quedar
# Select: Seleccionar columnas. Nombre de columnas con las que me quiero quedar
# Mutate : Añadir/Cambiar columnas

# Mayor mortalidad infantil en 2015
# objeto = gapminder
gapminder %>% filter(year=="2015")
View(gapminder %>% filter(year=="2015"))
# Filtramos a los dos paises indicados
gapminder %>% filter(year=="2015" & country %in% c("Sri Lanka", "Turkey"))
# Nos quedamos solo con las columnas country e infant.. de la seleccion anterior

> gapminder %>% filter(year=="2015" & country %in% c("Sri Lanka", "Turkey"))%>%
  + select(country,infant_mortality)

# Creamos una variable que contenga esta información
ex1<- gapminder %>%
  + filter(year=="2015" & country %in% c("Sri Lanka", "Turkey"))%>%
  + select(country,infant_mortality)

# Entre Poland or South Korean
ex2<- gapminder %>%
  + filter(year=="2015" & country %in% c("Poland", "South Korean"))%>%
  + select(country,infant_mortality)
# Podemos utilizar una columna sin saber su nombre completo

#Summarize 
# Utilizamos el DF heights
#Buscamos la media de la altura femenina

heights %>% 
  filter(sex=="Female")%>%
  summarize(
    av=mean(height),
    std=sd(height))
  )

# Es mas ordenado colocar el nombre de la operacion
# Summarize solo se aplica cuando el resultado devuelve un único valor
# El objeto con el que empezamos es el mismo que con el que terminamos
# Si empezamos con un DF terminamos con un DF

# Group by
heights %>% group_by(sex)%>% summarize(av = mean(height))

# Al hacer Group by se transforma en un tibble

# EJEMPLO BABIES
View(babies)
# Calcular media peso bebe según madre fumadora o no
babies %>% group_by(smoke)%>% summarize(av= mean(bwt))

#EJEMPLO URL LINEA 164

# Ordenar por una columna 
# arrange (columna)
head(tab %>% arrange(murder_rate))

# EJEMPLO MURDERS
data("murders")
View(murders)
# Creamos una nueva columna que se llamará murder-rate
#Modificamos el objeto murder
murders<-murders%>%
  mutate(murder_rate=total/population*10^5)
head(murders)

# Calculamos la media de esa nueva columna
murders%>% summarize(v=mean(murder_rate))

# Indicamos que del objeto creado solamente utilizamos v = autoreferencia
murders%>% summarize(v=mean(murder_rate))%>% .$v
s <-murders%>% summarize(v=mean(murder_rate))%>% .$v
s2 <-murders%>% summarize(total=sum(total))%>%
  .$total
# manipulamos la tabla tap para introducir esa informacion en murders?
tab%>% filter(year=="2015") %>%
  select(-year)%>%
  add_row(country = "USA", 
          continent = "Americas", 
          total = s2,
          murder_rate=s)

# unique () valores únicos dentro de una columna indicada

# DF NHANES
# Estadítica tensión (ambas) por genero y rango edad
NHANES %>% group_by(AgeDecade,Gender)%>% 
  summarize(av_D=mean(BPDiaAve,na.rm = T), av_S=mean(BPSysAve, na.rm = T))

# Filtramos los valores para eliminar los nulos
# !is.na Distinto de nulo
NHANES%>% filter(!is.na(AgeDecade))%>% 
  group_by(AgeDecade,Gender)%>% 
  summarize(av_D=mean(BPDiaAve,na.rm = T), av_S=mean(BPSysAve, na.rm = T))


# case_when 
# tity formato (Forma de organizar la información)

# regular expresion