###Ejercicios con meaudret

# Ejercicios con listas y data frames -------------------------------------

#Objetivo: Aplicar funciones sobre diferentes tipos de objetos en R

#1.- Cargar la base de datos "meaudret", e inspeccionarla
library(ade4)
data(meaudret) #efímeras
attach(meaudret)
head(meaudret)
tail(meaudret)
summary(meaudret)
summary(meaudret$env)
str(meaudret)
View(meaudret)
#1.- ¿Qué estructura de  datos tiene meaduret?
# Lista, de 4 elementos, que contiene:
env # es un data.frame() de 20x9
design # data.frame, 20x2
spe # data.frame, 20x13
spe.names # vector caracter


#2.- CREAR CUATRO OBJETOS INDEPENDIENTES CON LA BASE DE DATOS MEAUDRET
meaudret
FQ<- meaudret$env
diseñdiseño_exp<-meaudret$design
avistamientos<- meaudret$spe
ID<-factor(meaudret$spe.names)

#3.- ¿Cuántos avistamientos de efímeras hubo durante el experimento?
avistamientos
total_avistamientos<- sum(avistamientos)
total_avistamientos  # 595 avistamientos

#4.- ¿Cuántas especies diferentes se observaron durante el experimento?
ID<-factor(meaudret$spe.names)
ID #13
#5.- ¿Cuántas efímeras se observaron por época del año?

diseño_exp<-meaudret$design
avistamientos<- meaudret$spe
efimeras_epoca<- cbind(diseño_exp, avistamientos)
summary(efimeras_epoca)
View(efimeras_epoca)

  #paso #2.- hacer la suma de cuantas efímeras hay en cada época del año. Hacer subset con índex
spr <- efimeras_epoca[ efimeras_epoca$season=="spring",c(3:15) ]
efimeras_epoca$season=="spring"
primavera<- sum(spr)

# spring ------------------------------------------------------------------
spr <- efimeras_epoca[ efimeras_epoca$season=="spring",c(3:15) ]
efimeras_epoca$season=="spring"
primavera<- sum(spr)
# summer ------------------------------------------------------------------
su <- efimeras_epoca[ efimeras_epoca$season=="summer",c(3:15) ]
verano<- sum(su)
verano#134
# #autumn -----------------------------------------------------------------
ot <- efimeras_epoca[ efimeras_epoca$season=="autumn",c(3:15) ]
otoño<- sum(ot)
otoño
# winter ------------------------------------------------------------------
winter<- efimeras_epoca[ efimeras_epoca$season=="winter",c(3:15) ]
invierno<- sum(winter)
invierno

order(c(primavera, verano, otoño, invierno), decreasing = TRUE)

#6.- ¿En qué epoca del año se observaron más efímeras?
otoño

#7.- crear un boxplot y summary
#8.- Crea una base de datos tipo lista con los objetos generados en este ejercicio
diseño_exp
FQ
avistamientos
ID

Calidad_Meaudret <-list( DiseñoExp =diseño_exp,
                           VariablesAmbientales=FQ,
                          Avistamientos=avistamientos,
                           Generos=ID)
# Ejercicios con matrices -------------------------------------------------
FQ            <- meaudret$env
class(FQ)
FQ<- as.matrix(FQ)
class(FQ)
#Utiliza las Funciones más usadas en matrices para determinar
#1.- el número de filas
nrow(FQ)
#2.- el número de columnas
ncol(FQ)
#3.- la dimensión de la matriz
dim(FQ)
#4.- Resumen

summary(FQ)

summary(Calidad_Meaudret$Generos)

#5.- boxplot(distribución)
boxplot(outliers)
FQ
View(FQ)
outliers_2<-FQ[ ,c(5:7) ]
outliers<-FQ[ ,c(5,6,7) ]
boxplot(outliers_2)
View(FQ)

#5.- transponer  la matriz
t(FQ)
t(t(FQ))

#6.- Eigen values y eigenvector
eigen(FQ)

#7.- la diagonal de mi matriz
diag(FQ)

# Ejercicios Matriz importada ---------------------------------------------

#Importar la matriz_alelos y aplicar las funciones para examinar

