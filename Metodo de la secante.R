#OmarSilva_A2
#Metodo de la secante

#Valores iniciales
x0=1; xant=0; error=0;

#Error permitido
delt= 0.000001

#Numero de iteraciones
n=10

#Funcion para encontrar su raiz
f= function(x) (sin(x) + cos(1 - x^2) - 1)

plot(f,-3, 3, 
     lwd = 1,
     main = "Grafico de f(x)", 
     col = "blue", 
     xlab = "X", 
     ylab = "Y", 
     axes = TRUE, 
     n = 1000 
) 

#calculos usando el metodo

for(i in 1:n){
  numera= f(x0)*(xant-x0)
  denomi= f(xant)-f(x0)
  x1= x0 - (numera/denomi)
  print(c(i, x0, xant, x1)); error= abs(x1-x0)
  
  if(error<delt){
    cat("La solución converge en ", i, "iteraciones. Raiz= ", x1);
    break()
  }
  
  x0= x1
  
  if(i==n){ 
    print("Maximo numero de iteraciones alcanzado"); 
    break() 
  }
}

