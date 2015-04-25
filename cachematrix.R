## The following two functions are build to cache the inverse of a matrix. 
## makeCacheMatrix function creates the following :
## 1.set the value of the matrix 
## 2.get the value of the matrix 
## 3.set the value of inverse of the matrix 
## 4.get the value of inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
   
  inv <- NULL
  set <- function(y) {
    print("I am here 2")
    x <<- y
    inv <<- NULL
  }
  
  get <- function() x
  setInv <- function(inverse) inv <<- inverse
  getInv <- function()inv
  
  list(set = set, get = get, setInv = setInv, getInv = getInv)
}

## cacheSolve function returns the inverse of the matrix. 
## It first check the inverse are computed or not. if not 
## computed it computes the inverse and set the value in the cahe 
## via setInv function. If computed it get the result throug get Inv
## and skip computation

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInv() 
     if(!is.null(inv)) { 
             message("getting cached data.") 
             return(inv) 
         } 
       data <- x$get() 
       inv <- solve(data) 
       x$setInv(inv) 
       inv 
}
