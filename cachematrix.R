## The pair of functions below cache the inverse of a matrix.
## Firstly, it creates a object that stores a matrix and computing
## its inverse and, then, caches the inverse. 

## the function below creates a object that stores a matrix and
## caches its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function(){
    x
  }
  setinverse <- function(inverse){
    m <<- inverse
  }
  getinverse <- function(){
    m
  }
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## the function below computes the inverse of the matrix stored in
## makeCacheMatrix function. If it has already been computed and the
## matrix hasn't changed, then it retrieves the already computed
## inverse matrix with the message "getting cached data".

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
    message("getting cached data")
    return(m)
  }
  matriz <- x$get()
  m <- solve(matriz, ...)
  x$setinverse(m)
  return(m)
}


