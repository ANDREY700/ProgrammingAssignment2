## caching the incoming of a matrix inverted or not. just matrix

## Write a short comment describing this function

# function create an object including matrix
# and two function - to set and get the matrix
makeCacheMatrix <- function(x = matrix()) {
  set <- function (y) {
    x <<- y #set up new incoming matrix
  }
  get <- function () x #send saved matrix
  
  list(set = set, get=get) #list for variable
}


## function returns cached matrix. nothing more
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  m <- x$get() #take back saved matrix
  if(!is.null(m)) { #return if not null
    message("getting cached matrix")
    return(m)
  }
}

##TESTING
##create an matrix
#b_test <- matrix(nrow = 3, ncol = 3, data = c(c(2,3,4), c(3,4,7), c(9,4,3)), byrow = T)
##create  second matrix
#b_test_next <- matrix(nrow = 3, ncol = 3, data = c(c(1,1,1), c(2,2,2), c(3,3,3)), byrow = T)

##create odject
#saved_matrix <- makeCacheMatrix(b_test)
##assign it to function
#cacheSolve(saved_matrix)
##[,1] [,2] [,3]
##[1,]    2    3    4
##[2,]    3    4    7
##[3,]    9    4    3

##update cached matrix
#saved_matrix$set(b_test_next)
#cacheSolve(saved_matrix)
##[,1] [,2] [,3]
##[1,]    1    1    1
##[2,]    2    2    2
##[3,]    3    3    3
#saved_matrix$get()
# good - all ok
