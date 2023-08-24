##TAREA 0

z <- data.frame(
  numero = c(5, 4, 3, 2, 1),
  letra = c("S", "L", "B", "Q", "A"),
  medida = c(49.59, 91.84, 49.32, 72.25, 65.51)
)
print(z)
##Con esto hago el ejercicio n°14 de la tarea 0
##Cuando concatene letras, tengo que ponerle comillas, espacio, coma, espacio...
sample(100, 22)
[1] 47 16 53 94 91 31 20 35 95 42 55 84 70 89 14 15 21 38  5 33  6 24
##22 números al azar del 0 al 100
head(muestras,15)
##para imprimir el encabezado en la consola, las 15 primeras filas (ej si tuviera 22 filas, seleccionaria las primeras 15)
##Si quisera ver la tabla como tabla aquí, pongo view(head(tabla, 3)) y ahí me mostraría las primeras 3 filas de mi tabla.


##GRÁFICOS!! EJEMPLOS

##GRAFICO DE CAJA
ggplot(muestras,
       aes(x = tipo_de_ave, y = tamaño, colour = tipo_de_ave,
           fill = tipo_de_ave)) + # Rellenos diferentes para cada nivel
  geom_boxplot(alpha = 0.5) + # Un poco de transparencia al relleno
  geom_point(size = 3, alpha = 0.3) +
  xlab("Tipos de Aves Muestreadas") +
  ylab("Tamaño [cm]") +
  theme_classic() +
  theme(legend.position = "none") # Removemos la leyenda


##GRAFICO DE VIOLIN
ggplot(muestras,
       aes(x = tipo_de_ave, y = tamaño, colour = tipo_de_ave,
           fill = tipo_de_ave)) + # Rellenos diferentes para cada nivel
  geom_violin(alpha = 0.5) + # Un poco de transparencia al relleno
  geom_point(size = 3, alpha = 0.3) +
  xlab("Tipos de Aves Muestreadas") +
  ylab("Tamaño [cm]") +
  theme_classic() +
  coord_flip() + # This switch X and Y axis and allows to get the horizontal version
  theme(legend.position = "none") # Removemos la leyenda


##GRAFICO DE DISTRIBUCION

library(dplyr)
library(hrbrthemes)

Represent it

p <- muestras %>%
  ggplot( aes(x=tamaño, fill=tipo_de_ave)) +
  geom_histogram( color="#e9ecef", alpha=0.6, position = 'identity') +
  scale_fill_manual(values=c("#69b3a2", "#404080","violetred","violet")) +
  xlab("Pesos Corporales") +
  ylab("Cantidad de Individuos") +
  theme_classic() +
  labs(fill="")
p

##Para borrar cosas de la interfas, rm(nombre de lo que quiero borrar)

##TIDYVERSE, OBS:
library(tidyverse)
data(iris)
Summary.Petal <- summarize(iris, Mean.Petal.Length = mean(Petal.Length),
                           +                            SD.Petal.Length = sd(Petal.Length))
##Aquí abrimos una base de datos (iris) del largo y ancho de los pétalos y sépalos de flores. Luego, le asigné al ''Summary.Petal'' que me calculara el promedio y la desviación estándar del valor de largo y ancho de los pétalos.

Summary.Petal <- group_by(iris, Species)
Summary.Petal <- summarize(Summary.Petal, Mean.Petal.Length = mean(Petal.Length),SD.Petal.Length = sd(Petal.Length))

##Ahora con esto último, calculé la media y d.e agrupado por especie, ya no en general. 