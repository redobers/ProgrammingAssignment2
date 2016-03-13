## Cache the inverse of a matrix


## create square matrix of random numbers with dimensions defaulting to 9x9

makeCacheMatrix <- function(x = matrix(), dimension = 9) {
  x <<- NULL
  x <<- matrix(runif((dimension*dimension), 1, 100), dimension, dimension)
  print(x)
}


## Return a matrix that is the inverse of x, either returning cached value
## or if not, by calculating inverse

cacheSolve <- function(x, ...) {
  if(!is.null(x)) {
    message("getting cached data")
    return(x)
  }
  invx <- solve(x)
  print(invx)
}
