## Put comments here that give an overall description of what your
## functions do
#SE CREA UNA MATRIZ CON ESTA FUNCIÓN makeCacheMatrix ()
#SE HACE EL CACHE DE LA INVERSA CON LA FUNCIÓN cacheSolve (), CON LA MATRIZ QUE SE GENERO EN LA PRIMERA FUNCIÓN.

## Write a short comment describing this function
#SE CREA LA MATRIZ
makeCacheMatrix <- function(x = matrix()) {
        #DECLARAR LA VARIABLE QUE QUEREMOS OBTENER, CON VALOR NULO    
        inversa <- NULL
        #DECLARAR LA FUNCIÓN QUE RECIBE UNA MATRIZ Y MANDA LA INVERSA OBTENIDA
        set <- function(y) {
                x <<- y   #RECIBE UN NUEVO VALOR A LA MATRIZ QUE YA SE TIENE
                inversa <<- NULL #SI AGREGAMOS OTRA MATRIZ SU VALOR SERÁ NULO
        }
        
        get <- function() {x} #DEVUELVE EL VALOR DE LA MATRIZ
        setInversa <- function(CalculateInversa) {inversa <<- CalculateInversa} # EL VALOR DE INVERSA QUE SE TIENE SE ASIGNA
        getInversa <- function() {inversa} #LLAMA EL VALOR DE LA INVERSA CALCULADA
        #GENERACIÓN DE UNA LISTA CON LAS FUNCIONES ANTERIORES
        list(set = set, get = get,
             setInversa = setInversa,
             getInversa = getInversa)

}


## Write a short comment describing this function
#OBTENCIÓN DE LA INVERSA QUE SE OBTUVO EN LA FUNCIÓN ANTERIOR
cacheSolve <- function(x, ...) {
      
inversa <- x$getInversa() #OBTIENE EL VALOR DE INVERSA
        }
        ## VALUAR SI TIENE UN VALOR 
        if(!is.null(inversa)) {
                message("getting cached data")
                return(inversa)
        }
        data <- x$get() #IGUALAR A LA MATRIZ QUE SE DIO
        inversa <- solve(data, ...) #CALCULO DE LA MATRIZ POR EL MÉTODO SOLVE
        x$setInversa(inversa)
        inversa ## Return a matrix that is the inverse of 'x'
}
