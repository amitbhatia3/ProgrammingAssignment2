## Put comments here that give an overall description of what your
## functions do
#
# makeCacheMatrix creates the Matrix object x and creates functions
# related to getting/setting x and getting/setting its inverse i
#
# cacheSolve returns the inverse i of matrix object x, either
# by getting from cache or computing,storing and then getting
# from cache

## Write a short comment describing this function
# makeCacheMatrix creates the Matrix object x and creates functions
# related to getting/setting x and getting/setting its inverse i

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y) {
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setinv <- function(k) i <<- k
	getinv <- function() i
	list(set = set, get = get,
		setinv = setinv,
		getinv = getinv)
}


## Write a short comment describing this function
# cacheSolve returns the inverse i of matrix object x, either
# by getting from cache or computing,storing and then getting
# from cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinv()
	if(!is.null(m)) {
		message("getting cached data")
		return(i)
	}
	data <- x$get()
	i <- solve(data)
	x$setinv(i)
	i
}

