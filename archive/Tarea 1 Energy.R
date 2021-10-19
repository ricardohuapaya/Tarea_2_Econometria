setwd("C:/Users/FamiliaFeliz/Documents/Sebas U/II-2021/Econometría/Lab/Tareas")

#Punto 1
#Para el conjunto de datos, note que los datos estan en formato de la
#función Cobb Douglas
datos <- read_excel("~/Sebas U/II-2021/Econometría/Lab/Tareas/Electricity1970.xlsx")

library(dplyr)

datos_reg <- select(datos, Costo= COST, Produccion = output, Trabajo=labor,
                Capital=capital, Combustible=fuel    )


#Punto 2

#round(cor(datos_reg),2)  

round(cor(datos),2)  
#utilizando los datos originales y como variable dependiente cost(costos totales)
#se ve que existe una correlación positiva con las variables output, labor, 
#capital, fuel y fuelshare. 
#Esto quiere decir que conforme la variable costos incremente las variables
#antes mencionadas también aumentaran.




#Punto 3
Se utiliza de la base de datos las variables de costo, produccion, trabjo
capital y combustible, la variable dependiente es el costo y las
#explicativas las demás
modelo_reg <- lm( Costo ~ Produccion + Trabajo + Capital + Combustible, data= datos_reg)

summary(modelo_reg)

coefficients(modelo_reg)

#Cuando las variables explicativas toman el valor de 0 los costos son
#negativos, luego interpretando los coeficientes de las variables explicativas
#conforme cualquiera de las variables aumente el costo total va aumentar esto
#se puede afirmar con un 5% de significancia.
#Cabe resaltar que las tres primeras variables explicativas tienen
#rendimientos decrecientes luego la cuarta variable de combustible 
#presenta redimientos crecientes a escala 
#***Asumimos que la función es Cobb Douglas por la manera de los datos**#




#Punto 4
summary(modelo_reg)

#Viendo los resultados de las pruebas T con una Ho: B´s=0 
#Se puede afirmar con un nivel de significancia del 5% que los coeficientes
#no son iguales a 0, esto quiere decir que se rechaza la Ho


#Punto 5 
summary(modelo_reg)
#Interpretando la prueba F de significancia conjunta del modelo con la 
#función summary donde la Ho: B´s(en conjunto)= 0 se puede afirmar que 
#los coeficientes de las variables explicativas no son 0


#Punto 6 
#Modelo restringido: B1+B2+B3=1 ^ B4=1





