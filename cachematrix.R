## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
	m_inverse <- NULL
	set <- function(y) {
		x <<- y
		inverse <<- NULL
	}
	get <- function() x
	setinverse <- function(inverse) m_inverse <<- inverse
	getinverse <- function() M-inverse
	list(set = set, get=get, setinverse=setinverse, getinverse=getinvers)e
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	m_inverse <- x$getinverse()
	if(!is.null(m_inverse) {
		message("getting cached inverse matrix")
		return(m_inverse)
	}
	else {
		m_inverse <- solve(x$get())
		x$setinverse(m_inverse)
		return(m_inverse)
	}
}
