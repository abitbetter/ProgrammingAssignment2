## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# 1.- Set the value of the matrix
# 2.- Get the value of the matrix
# 3.- Set the value of the inverse
# 4.- Get the value of the inverse
  
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
# 1.- Get inverse if aready solved
# 2.- Check if it exists.  If exists return it as previously calculated.
# 3.- If it doesn´t exist, retrieve the original matrix, calculate inverse and return it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}

