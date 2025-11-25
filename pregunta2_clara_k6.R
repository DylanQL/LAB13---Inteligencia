# Pregunta 2: Aplicar Cluster CLARA con k=6

# Cargar librería necesaria
library(cluster)

# Crear la base de datos my_data1
observacion_a <- c(4, 4.5, 4, 7.5, 7, 6, 5, 5.5, 5, 6)
observacion_b <- c(4, 4.5, 4, 7.5, 7, 6, 5, 5.5, 5, 6) + 4
observacion_c <- c(5, 5.5, 4.8, 5.4, 4.7, 5.6, 5.3, 5.5, 5.2, 4.8)

my_data1 <- data.frame(x = rep(c(1, 5, 8), each = 10),
                       y = c(observacion_a, observacion_b, observacion_c),
                       z = 1:10)

# Aplicar CLARA con 6 clusters
clara_result <- clara(my_data1, k = 6)

# Mostrar resultados
print(clara_result)
