## MakeCacheMatrix is a function containing 4 function that are used to create a new object.
## This object is a Matrix in which we are going to cache the inverse of the input.

## Write a short comment describing this function
# x is a matrix
# the result will be a list with the four functions

makeCacheMatrix <- function(x = matrix()) {
        matrice <- NULL # initialise the cache matrix
        
        # created a new vector with x contents
        setMatrix <- function(setNewMatrix)
        {
                x<<- setNewMatrix
                matrice < NULL
        }
        
        # return the initial matrix
        matriceGet <-   function() x 
        
        # set the matrix to the inverse
        matriceInverseSet <- function(inverse)
        {
                matrice <<- inverse
        }
        # make the inverse matrix appear
        matriceInverseGet <- function()
        {
                matrice
        }
        
        # list with all the function
        list(set=setMatrix,get=matriceGet,setInverse = matriceInverseSet, getInverse = matriceInverseGet)
        
}


## This function give the inverse matrix of an object of type CacheMatrix

# x is a object created with makeCacheMatrix
# the result is the inverse matrix.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        ## definition of the initial matrix
matrice <- x$getInverse()

# verifing if the matrix is Null
if (!is.null(matrice))
{
        message("getting cached data")
}

# create a variable containing the contains of the input
        data <- x$get()
        
        # calculated the inverse of the matrix
        matrice <- solve(data,...)
        # returned the inverset of the matrix
        x$setInverse(matrice)
        matrice
}
