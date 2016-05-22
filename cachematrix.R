## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function creates an object with own functions(in some languages they are called
##  methods) and data

makeCacheMatrix <- function(x = matrix()) {
  im <<- NULL
  set<-function(y){
    m <<- y
    im <<- NULL
  }
  get<-function() m
  setinv<-function(invm){
    im <<- invm
  }
  getinv<-function() im
  
  list(getm = get,setm = set,seti = setinv,geti = getinv)

}


## this function is checking x object  wether it has cached inverse matrix or not yet.
## And if yes then it returns cached(stored)

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invm <-x$geti()
  if (!is.null(invm)){
    message("Getting cached data")
    return(invm)
  }
      
  matr <- x$getm()
  invm <-solve(matr)
  x$seti(invm)
  invm
}
