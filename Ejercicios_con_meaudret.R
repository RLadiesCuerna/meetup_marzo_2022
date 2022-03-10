###Ejercicios con meaudret

# Ejercicios con listas y data frames -------------------------------------

#Objetivo: Aplicar funciones sobre diferentes tipos de objetos en R

#1.- Cargar la base de datos "meaudret", e inspeccionarla
library(ade4)
data(meaudret) #efímeras


#1.- ¿Qué estructura de  datos tiene meaduret?
#2.- CREAR CUATRO OBJETOS INDEPENDIENTES CON LA BASE DE DATOS MEAUDRET  
#3.- ¿Cuántos avistamientos de efímeras hubo durante el experimento?
#4.- ¿Cuántas especies diferentes se observaron durante el experimento?
#5.- ¿Cuántas efímeras se observaron por época del año?
 #paso #1.- Crear la base de datos.- tip: unir con cbind
  #paso #2.- hacer la suma de cuantas efímeras hay en cada época del año. Hacer subset con índex

# spring ------------------------------------------------------------------
sp<-efimerasXepoca[obs , var]
  #llenar los corchetes 
  #sumar
# summer ------------------------------------------------------------------

  #llenar los corchetes 
su<-efimerasXepoca[ obs, var]
  #sumar

# #autumn -----------------------------------------------------------------
  #llenar los corchetes 
au<-efimerasXepoca[ obs, var]
  #sumar

# winter ------------------------------------------------------------------
  #llenar los corchetes 
wi<-efimerasXepoca[ obs, var]
  #sumar
sum(wi)
#6.- ¿En qué epoca del año se observaron más efímeras?
#7.- crear un boxplot y summary
#8.- Crea una base de datos tipo lista con los objetos generados en este ejercicio
diseño_exp    
FQ            
avistamientos 
ID            

#experimento_de_efimeras <- list(x, y,z,f) 

# Ejercicios con matrices -------------------------------------------------
FQ            <- meaudret$env

#Utiliza las Funciones más usadas en matrices para determinar
#1.- el número de filas
#2.- el número de columnas
#3.- la dimensión de la matriz
#4.- Resumen
#5.- boxplot(distribución)
#5.- transponer  la matriz
#6.- Eigen values y eigenvector
#7.- la diagonal de mi matriz

# Ejercicios Matriz importada ---------------------------------------------

#Importar la matriz_alelos y aplicar las funciones para examinar
