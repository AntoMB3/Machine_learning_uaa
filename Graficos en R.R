# Gráficos en R
# En esta presentación estudiaremos en detalle la construccion del comando plot()

x <- runif(50,0,4) #50 numeros aleatorios entre 0 y 4
y <- runif(50,0,4)

# Graficamos
plot(x, y, main="Titulo principal", sub="subtitulo", xlab="Etiqueta Eje x", 
     ylab = "Etiqueta Eje Y", xlim = c(-1,5), ylim = c(-1,5), col="red")

# variaciones del plot
z <- cbind(x,y)
plot(z)

plot(y ~ x, col="darkblue")

plot(log(y + 1) ~ x) # Transformación a Y

plot(x,y,type="p")

plot(x,y,type="l")

plot(x,y, type="b")

plot(c(1,5), c(1,5))

plot(c(1,5), c(1,5))
legend(1,4, c("uno", "dos", "tres"), lty=1:3, col=c("red", "blue", "green"), pch=12:14, cex = 1)

plot(1:10, 1:10, axes=FALSE, xlab="", ylab="")
polygon(runif(4,1,10),runif(4,1,10),col="lightblue")
points(runif(5,1,10), runif(5,1,10), cex = 1.5, col="red")
points(runif(5,1,10), runif(5,1,10), pch = "+", cex = 1.7, col="green")
lines(1:10, runif(10,1,10),lyt=2, lwd=2)
text(runif(5,1,10), runif(5,1,10), labels=c("uno", "dos", "tres", "cuatro", "cinco"), cex = 1.7,
     col = rainbow(5))
abline(h=5, lty=4)
title("Grafico muy variado")
axis(1, labels=c("uno","tres","cinco","siete","nueve"),at=seq(1,10,by=2))
axis(2,labels=1:10, at=1:10)
legend(8,3,lty=c(1:3), col=rainbow(3),legend=c("uno","dos","tre"))

x <- runif(50,0,4) #50 numeros aleatorios entre 0 y 4
y <- runif(50,0,4)
plot(x,y,type="n")
points(x,y,pch=3, col="red")


plot(c(1,10), c(1,3), type = "n", axes=FALSE, xlab="", ylab="")
points(1:10, rep(1,10), pch = 1:10, cex = 2, col = "blue")
points(1:10, rep(2,10), pch = 11:20, cex = 2, col = "red")
points(1:5, rep(3,5), pch = 21:25, cex = 2, col = "yellow", bg = "yellow")

# Múltiples gráficos por ventana

par(mfrow=c(2,2)) # Define una malla de 2x2
plot(rnorm(10))
plot(runif(5), rnorm(5))
plot(runif(10))
plot(rnorm(10), rnorm(10))

VADeaths
barplot(VADeaths, beside=TRUE, legend=TRUE, ylim=c(0,90), ylab="Muertes por cada 1000",
        main = "Tasas de mortalidad en Virginia")
dotchart(VADeaths,legend=TRUE, xlim=c(0,75), ylab="Muertes por cada 1000",
        main = "Tasas de mortalidad en Virginia")

## Graficos circulares
grupos <- c(18,30,32,10,10)
etiquetas <- c("A", "B", "C", "D", "F")
pie(grupos, etiquetas, col=c("red", "blue", "green", "yellow", "orange"))

## Histogramas
x <- rnorm(100)
hist(x, col="lightblue")

# Diagrama de caja
boxplot(Sepal.Length ~ Species, data = iris, ylab="Largo del sepalo (cm)",
        main = "Medidas de la tabla de iris",boxwex=0.5, col="pink")


#IRIS
iris
head(iris)
tail(iris)
library(ellipse)
correlation <- cor(iris[,-5])
plotcorr(correlation, col="purple")

library(corrplot)
corrplot(correlation)

barplot(table(iris$Species), col = "red")
boxplot(Sepal.Length ~ Species, data = iris, col = c("blue", "lightblue", "darkgreen"))
