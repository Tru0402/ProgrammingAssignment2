## Creating a function(s) to cache computations that take a large amout of time
## By doing this saves time and long running computations
## Script is able to cache inverse matrix computations that are very time consuming

##caching functions that are computationally intensive will save on time and be more efficient
##than looping and executing said function for every loop

##purpose of this script is to create a function to set value of a matrix,
##get value of matrix, set value of inverse matrix, and get value of inverse matrix

makeCacheMatrix <- function( x = matrix() ) 
  
  {
  inversematrix = NULL #inverse matrix initial value
  
  set <- function( y ) {        #set value input y
    
  x <<- y                       #sets x (global) to input y 
  
  inversematrix <<- NULL        #clear inverse matrix
  }
  
  get <- function()x            #get value of matrix
  
  setinverse <- function(solve) inversematrix <<- solve #inverse matrix set value
  
  getinverse <- function() inversematrix #              #inverse matrix get value
  
  list( set = set, get = get, setmean = setmean, getmean = getmean) #finish w/ special vector
}

cacheSolve <- function( x, ... ) {        #creating cachesolve function
  
  inversematrix <- x$getinverse()         #retrieve value of inverse

  if( !is.null( inversematrix ) ) {       #look to see if inverse has been created
    message("retrieving cache data")
    
    return( inversematrix )               #get the cached value
  }
  
  invertmatrix <- x$get()
  inversematrix <- solve(invertmatrix, ...) #calculate inverse matrix
  
  x$setinverse(inversematrix)             #set mean to cache value
  
  inversematrix                           #this returns matrix which is inverse of x
}
  
  
   






































