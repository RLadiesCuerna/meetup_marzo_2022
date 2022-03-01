# MATRICES ----------------------------------------------------------------
#Estructura de datos de un mismo tipo. 
help("matrix")
matrix(data = NA, #vector
       nrow = 1,  # filas
       ncol = 1,  # columnas
       byrow = FALSE, # dirección de llenado
       dimnames = NULL) # una lista del nombre de las filas

#método del vector
data<- 1:6
matrix(data)

#metodo por columnas por defecto
matrix(data, 3,2)
matrix(data, 2,3)

matrix(data, ncol = 2) 
matrix(data,  nrow = 3, ncol = 2) # Equivalent
matrix(data, nrow = 3) # Equivalent
matrix(data, 3,2) #equivalente

# By rows
matrix(data,
       ncol = 2, 
       byrow = TRUE)

# concatenando dos vectores 
x <- c(2, 7, 3, 6, 1)
y <- c(3, 7, 3, 5, 9)

# By columns
cbind(x, y)
z<-cbind(x,y)
# By rows
rbind(x, y)

# Output class
class(z)            # equivalente
class(cbind(x, y))  # "matrix"

# Data type of the elements
typeof(z)            # equivalente
typeof(cbind(x, y)) # "double"

#matriz de tipo lógico
vec_logico<-c(TRUE, TRUE, FALSE, TRUE)
matrix(vec_logico,
       ncol = 2)
matrix(c("red", "green", "orange", "black"), ncol = 2)
#conocer las dimensiones
my_matrix<-matrix(c("red", "green", "orange", "black"),
                  ncol = 2)
dim(my_matrix)
###aqui nos quedamos
# DATA FRAMES -------------------------------------------------------------

temp <- c(20.37, 18.56, 18.4, 21.96, 29.53, 28.16,
          36.38, 36.62, 40.03, 27.59, 22.15, 19.85)
humidity <- c(88, 86, 81, 79, 80, 78,
              71, 69, 78, 82, 85, 83)
rain <- c(72, 33.9, 37.5, 36.6, 31.0, 16.6,
          1.2, 6.8, 36.8, 30.8, 38.5, 22.7)
month <- c("January", "February", "March", "April", "May", "June",
           "July", "August", "September", "October", "November", "December")


data <- data.frame(month = month, 
                   temperature = temp,
                   humidity = humidity,
                   rain = rain)

names(data) # nombres de las variables en columnas
#tarea, cómo extraer la temperatura del mes de diciembre?
#TIP: Usa el índice interno de R
data.frame[observaciones,variables]
#[ obs  , var       ] 
#[ filas, columnas  ]


##Ejercicio:
#1.-crear tres vectores
#2.- Concatenarlos a matriz y llámalos "Total"
#3.-Convertirlos a data.frame mediante coerción
vector1<- c(1,2,3)
vector2<- c(4,5,6)
vector3 <- c(7,8,9)
class(vector1)

Total<- rbind(vector1,
          vector2,
          vector3
               )
Total

Total2<- cbind(vector1,
              vector2,
              vector3
)
Total2
class(Total2)
total_frame<-as.data.frame(Total2)
class(total_frame)

# Listas ------------------------------------------------------------------
x <- 1:4
y <- 2:4
n <- 10
M <- c(10, 35)
#LISTA A PARTIR DE VECTORES
L1 <- list(x, y) 
L1
L2 <- list(A=x, B=y)
L2
L1
class(L1)
L1[1]
L2[2]
L2$A
L2$A
L2$B
