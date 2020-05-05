## Put comments here that give an overall description of what your
## functions do
## These functions are used to reduced the time-comsuming computation needed to calculate the inverse
## of a matrix. Combining the creation of a list, which indeed contains the information of a matrix, with
## a function that can use this list to calculate the inverse.
## Write a short comment describing this function
## This function creates and returns a list from a given matrix, using the superassigment operator <<- and
## the rules of lexical scoping.
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Write a short comment describing this function
## This function uses the list returned from the previous one and calculates de inverse matrix.

        ## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if (!is.null(inv)) {
          message("getting cached data")
          return(inv)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
