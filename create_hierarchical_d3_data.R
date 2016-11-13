l1 <- c(a=1, b=2, c=3)
l2 <- c(a=4, b=4, c=5, d=4)

rows <- lapply(list(l1,l2),function(x) {data.frame(as.list(x))})
bind_rows(rows)

create_child <- function() {
  
  if (runif(1) < 0.4) {
    children <- list()
    for (i in 1:2) {
      this_child <- create_child()
      children[[i]] <- this_child
    }
    return(children)
  }
  
  
  # else return an actual child
  child <- list()
  child[["name"]] <- "a_child"
  child[["value"]] <- 1
  return(child)
}

tree <- list()
tree[["name"]] <- "head"
tree[["children"]] <- create_child()
tree  
  
  
library(jsonlite)
flare <- fromJSON(
    "http://mbostock.github.io/d3/talk/20111018/flare.json",
    simplifyDataFrame = FALSE
  )
toJSON(flare)




