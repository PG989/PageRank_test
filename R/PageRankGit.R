PageRankGit <- function(file, ...){
  #install.packages('igraph')
  #library(igraph)
  install.packages("jsonlite")
  library(jsonlite)
  # pdb <- fromJSON(jsonInput)
  # g <- pdb[, "Package"] %>%
  #   makeDepGraph(availPkgs = pdb, suggests=FALSE, enhances=TRUE, includeBasePkgs = FALSE)
  #   
  #   pr <- g %>%
  #     page.rank(directed = FALSE) %>%
  #     use_series("vector") %>%
  #     sort(decreasing = TRUE) %>%
  #     as.matrix %>%
  #     set_colnames("page.rank")
  
  pdb <- jsonlite::fromJSON(file)
  return(toJSON(paste(pdb[1,1])))
                  
}
