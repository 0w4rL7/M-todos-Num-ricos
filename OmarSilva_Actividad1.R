#Actividad 1 Omar Silva Lara

#Digitos enteros y fracciones
a= 6384671
b<- 0.5342198


options(digits=3)
1/3.0

#Redondeo
round(54.2)
round(97.5684197, 2)

#Digitos significativos
signif(27.384956102)
signif(39.6429304521, 2)
signif(316.6971243547, 3)

#Definir variables y asignar valores
e= exp(1)
x= 0.005
x0= e ** (2*x)
tex= "El valor de x0 es "
cat(tex, x0)

#Graficación de funciones
g= function(x) sin(cos(x)*exp(-x/2))
plot(g, -8, -5,
     lwd= 1, e,
     main= "grafico de g ",
     col= "blue",
     xlab= "x",
     ylab= "g(x)",
     axes= TRUE,
     n= 1000)
