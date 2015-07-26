## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## 1. set the value of the matrix
## 2. get the value of the matrox
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()){
  matrixInverse <- NULL;
  set <- function(y){
    x <<- y;
    matrixInverse <<- NULL;
  }
  get <- function() x
  setInverse <- function(inverse) matrixInverse <<- inverse
  getInverse <- function() inverse
  list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Write a short comment describing this function

## 1. check if the inverse is already cached
## 2. if not, calculate the inverse of the matrix
## 3. then set the inverse of the matrix
cacheInverse <- function(x, ...){
  m <- x$getInverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setInverse(m)
  m
}
