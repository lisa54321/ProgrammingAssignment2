## 
##This set of functions will cache the inverse of matrix x.

## Create a special matrix with a list that will set the value of the matrix, get the value of the matrix,
## set the value of the inverse matrix, and get the value of the inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function (y){
         x<<- y
         i <<- NULL
        
}
        get <- function () x
        setinverse <- function(inv) i<<- inv
        getinverse <- function () i
        list (set= set, 
        get = get,
        setinverse= setinverse,
        getinverse= getinverse
        )
        }
        

## ## Second function retrieves the inverse value of the matrix
## if it is available.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
i <- x$getinverse()
  if (!is.null(i)) {
        message("retrieving cached data")
        return (i)
  }
  d <- x$get()
  i <- solve(d,...)
  x$setinverse(i)
  i

}
