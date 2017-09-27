### Put comments here that give an overall description of what your functions do


#The first function, makeCacheMatrix creates a special "matrix", which is really a list containing a function to

#    set the value of the matrix
#    get the value of the matrix
#    set the value of the inverse of the matrix
#    get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        return(list(set = set, get = get,
             setinv = setinv,
             getinv = getinv))
}


#The following function returns the inverse of the matrix. First, it checks if the inverse has already been computed 
#and if it has, it gets the results and skps the computation. If the inverse has not been computed, it sets the value 
#in the cache using the setinverse function.



#This function assumes that the matrix is always invertible

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("getting cached inverse data")
                return(inv)
        }
          data <- x$get()
          inv <- solve(data)
          x$setinv(inv)
          return(inv)

}

#Sample run
#x<-rbind(c(1, -1/4), c(-1/4, 1))
#m<-makeCacheMatrix(x)


m$get()


