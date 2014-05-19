## en,ennn.......
## functions do

## ## Totally copys from instructions.No idea how it goes.should be same.

makeCacheMatrix <- function(x = matrix()) { 
        m <- NULL
        set <- function(y) {
            x <<- y
            m <<- NULL
        }
        get <- function() x
        verseM <- function(solve) m <<- solve
        getM <- function() m
        list(set = set, get = get,
             verseM = verseM,
             getM = getM)
}


## Totally copys from instructions.No idea how it goes.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getM()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data,...)
    x$verseM(m)
    m
    
}
