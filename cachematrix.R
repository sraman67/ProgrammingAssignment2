## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m<- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  SetinvMatrix <- function(x) inv <<- solve(x)
  getInc <- function() inv
  list (set = set, get = get,
        SetinvMatrix = SetinvMatrix,
        getInv = getInv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv = x$getInv()
  if(!is.null(inv)) {
    message("Getting cached data")
    return(inv)
  }
  data <-x$get()
  m<-solve(x)
  x$SetinvMatrix(m)
  m
}

