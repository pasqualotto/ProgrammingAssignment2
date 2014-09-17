## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## This function creates a special "matrix" object that can cache its inverse.
## For this assignment, assume that the matrix supplied is always invertible.

makeCacheMatrix <- function(x = matrix()) {

## Cache the original matrix for future comparison.
      cachedMatrix <<- x
      
## Calculate the inverse matrix of the original matrix and cache the result.
      cachedInvMatrix <<- solve(x)
}


## Write a short comment describing this function
## This function computes the inverse of the special "matrix" returned by
##   makeCacheMatrix above. If the inverse has already been calculated
##  (and the matrix has not changed), then the cachesolve should retrieve the
##  inverse from the cache.


cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  
## Compare the cached matrix with the new matrix entered
      if(identical(x,cachedMatrix)){
## If it's identical use the cached value of the inverse matrix
        message("getting cached data")
        cachedInvMatrix
      }
## If it's not find the inverse of the new matrix.
      solve(x)
}
