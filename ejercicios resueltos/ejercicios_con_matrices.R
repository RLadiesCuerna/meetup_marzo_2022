# Ejercicios con matrices -------------------------------------------------
FQ            <- meaudret$env
class(FQ)
FQ<- as.matrix(FQ)
class(FQ)

#Utiliza las Funciones más usadas en matrices para determinar
#1.- el número de filas
nrow(FQ)
View(FQ)

#2.- el número de columnas
ncol(FQ)
#3.- la dimensión de la matriz
dim(FQ)
#4.- Resumen
summary(FQ)
#5.- boxplot(distribución)

boxplot(FQ)
fq_2<- FQ[ ,c(5,6,7) ]
boxplot(fq_2)

#5.- transponer  la matriz
t(FQ)
t(t(FQ))

#6.- Eigen values y eigenvector
eigen(FQ)
#7.- la diagonal de mi matriz
diag(FQ)


# Ejercicios Matriz importada ---------------------------------------------

#Importar la matriz_alelos y aplicar las funciones para examinar
