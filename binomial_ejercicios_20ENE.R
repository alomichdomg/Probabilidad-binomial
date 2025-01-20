####Binomial,  co-gustos, enriquecimiento#####
#base de datos:
salon_binomial

#Ejercicios de clase:
#Calcula la distancia de Hamming entre las personas  tú y quién quieras. 
  ##¿Cuántas diferencias hay en sus respuestas?
alo_vector <- c(1,	1	,0,	0,	1,	0,	0,	1,	0,	0,	0,	1,	1)
otro_vector <- c(1,	1,	1,	0,	1,	0,	0,	1,	0,	1,	1,	0,	0)
disth<- sum(alo_vector != otro_vector) #=5
disth
normalidad <- disth/length(alo_vector) # 0.3846154

#para la distancia de hamming se tiene que hacer una matriz con los datos; luego la formula hamming.distance.

#Construye la   matriz de distancia de Hamming  entre todas las personas de la base de datos. 
  ##¿Cuáles son las dos personas más similares? ¿Cuáles son las más diferentes?
a=mia
b=comparar
x<- 0
for (i in 1:13) {
  if (salon_binomial[4, i+1] != salon_binomial[9, i+1]){
    x <- x+1
  }
}
x #cuales son el numero de diferencias 
y <- 1
while (y < 23) {
  if (2*2 > 1){
    sum(salon_binomial[4, 2:14] != salon_binomial[y, 2:14]) -> comparativa
    print(comparativa)
  }
 y <- y+1
}
##checar el ciclo while 
mat1 <- matrix( )


#Usando la matriz de distancia de Hamming , agrupa a las personas en  según sus intereses en . 
  ##¿Qué características comunes encuentras en cada grupo?

#Supongamos que la probabilidad de que una persona disfrute de Kpop en la base de datos es p. 
  ##Si seleccionamos  al azar 5 personas, ¿cuál es la probabilidad de que 3 sean fans de Kpop?
kpop <- probabilidad_formula(5, 3, 6/22)
kpop

#Si seleccionamos  al azar, ¿cuál es la probabilidad de que  de ellas sea fan de ? NFL
nfl <- probabilidad_formula(10, 6, 7/22)
nfl

#En nuestra base de datos, calculamos la probabilidad de consumir Chocolate (p).
  ##Si seleccionamos 10 personas, ¿cuál es la probabilidad de que  6 de ellas consuman Chocolate?
chocolate <- probabilidad_formula(10, 6, 19/22)
chocolate
#Si sabemos que la probabilidad de que una persona haga Jogging  y Nadar  está dada por la base de datos, 
  ##y seleccionamos , ¿cuál es la probabilidad de que exactamente  de ellas realicen ambas actividades?
combinado <- probabilidad_formula(12, 4, 3/22)
combinado
#Seleccionamos  al azar 8 personas. ¿Cuál es la probabilidad de que   5 sean fanáticos de Rom-Coms ?
peliculas <- probabilidad_formula(8, 5, 10/22)
peliculas
#Si seleccionamos  al azar, 7 personas ¿cuál es la probabilidad de que  al menos una de ellas conduzca un auto?
automovil <- probabilidad_formula(7, 1, 9/22)
automovil
#Si seleccionamos  al azar 5 personas , ¿cuál es la probabilidad de que  exactamente 3 consuman Alcohol?
alcohol <- probabilidad_formula(5,3, 18/22)
alcohol
#Si seleccionamos  al azar 6 personas, ¿cuál es la probabilidad de que al menso 3 sean fans de los cómics ?
comics <- probabilidad_formula(6,3, 10/22)
comics
#Si seleccionamos  4 personas al azar, 
  ##¿cuál es la probabilidad de que  al menos 3. de ellas disfruten de bailar?
bailar <- probabilidad_formula(6,3,15/22)
bailar
  
##probabilidad_formula <- function(n, m, p){
probabilidad_formula <- function(n, m, p){
    facto <- factorial(n) / (factorial(m) * factorial(n - m))  
    calculo <- facto * (p^m) * ((1 - p)^(n - m))  
    return(calculo)
  }

