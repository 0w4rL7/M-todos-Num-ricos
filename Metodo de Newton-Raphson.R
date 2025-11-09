#OmarSilva_A2
#Metodo de Newton-Raphson
# Valor inicial de x0 (valor supuesto) 

x0=5 

# Valor de precision (delta) 

delt=0.000001

#Numero de iteraciones 

n=15 

# Escritura de la funcion (cambiar por los valores deseados) 

f=function(x) 2*x**3 - 8*x**2 + 10*x - 15 

plot(f,-10, 10, 
     
     lwd = 1, 
     
     main = "Grafico de f(x)", 
     
     col = "blue", 
     
     xlab = "X", 
     
     ylab = "Y", 
     
     axes = TRUE, 
     
     n = 1000 
     ) 

# Derivada de la funcion (calcular la derivada de la funcion anterior) 

df=function(x) 6*x**2 - 16*x + 10

# Ciclo de iteraciones y resultados 

for (i in 1:n) { 
  
  x1= x0 - f(x0)/df(x0) 
  
  print(c(i, x0, x1)); error= abs(x1-x0) 
  
  if (error<delt) { 
    
    cat("La solucion converge en ", i, "iteraciones. Raiz = ", x1); 
    
    break()
    } 
  
  x0= x1 
  
  if(i==n){ 
    print("Maximo numero de iteraciones alcanzado"); 
    
    break() 
    } 
  
}