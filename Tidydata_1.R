####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)

# LABORATORIO - Tidy data -datos ordenados- PARTE 1,2 y 3.

# Objetivo: Introducción práctica a los datos ordenados (o tidy data) y a las herramientas que provee el paquete tidyr.
# --------------------------------------------------------------------------------------------------------------------
# En este ejercicio vamos a:
# 1. Cargar datos (tibbles)
# 2. Convertir nuestros tibbles en dataframes (para su exportación)
# 3. Exportar dataframes originales
# 4. Pivotar tabla 4a
# 5. Exportar resultado (TABLA PIVOTANTE)
# 6. Separar y unir tablas



#############################################
#LABORATORIO: Tidy data (datos ordenados) 1 #
#############################################
#Prerrequisitos
#instalar paquete tidyverse
#install.packages("tidyverse")

#instalar paquete tidyr
#install.packages("tidyr")


#instalar paquete de datos
#install.packages("remotes")
#install.packages("datos")

#Cargar paquete tidyverse
library(tidyverse)
library(tidyr)

#Cargar paquete de datos
library(datos)



#tabla 1 hasta tabla 4b
#ver datos como tibble 
datos::tabla1
datos::tabla2
datos::tabla3
datos::tabla4a
datos::tabla4b

#ver datos como dataframe 
df1 <- data.frame(tabla1)
df2 <- data.frame(tabla2)
df3 <- data.frame(tabla3)
df4a <- data.frame(tabla4a)
df4b <- data.frame(tabla4b)


#exportar los dataframes originales
write.csv(df1,file = "df1.csv")
write.csv(df2,file = "df2.csv")
write.csv(df3,file = "df3.csv")
write.csv(df4a,file = "df4a.csv")
write.csv(df4b,file = "df4b.csv")


vignette("tibble")
#explicación de tibble


# Ordenar datos con la tabla4a (PIVOTAR)
t4a_pivotante = table4a %>% 
  pivot_longer(cols = c (`1999`, `2000`), names_to = "anio", values_to = "casos")


# Exportar resultado: tabla ordenada
write.csv(t4a_pivotante,file = "t4a_pivotante.csv")