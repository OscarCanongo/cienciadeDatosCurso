c(10,11,15)
mivec <- c(10,11,15)
mivec
mivec / 2
nuevoVec = mivec+mivec
nuevoVec

c(60, nuevoVec)

a <- c("hola", "adios")
a
b <- c(TRUE, FALSE)
b
a[1]
c<-c(1:10)
c
c[-4]

miLista <- list(num = 42, saludo = "hola mundo")
miLista
miLista$num
miLista[[1]]

class(miLista)
typeof(miLista)
str(mivec)
str(miLista)

mat <- matrix(c(1,3,3,2,2,2), nrow=2, ncol=3)
mat
rownames(mat) <- c("primera", "segunda")
mat
colnames(mat) <- c("uno", "dos", "tres")
mat
mat[1, 2]

