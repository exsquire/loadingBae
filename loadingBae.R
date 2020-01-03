#loadingBae
#Method for automated loading of script inputs
#RDS-support only for now

#Goal: Set input directory path, vector of keywords that represent
#you project's input files, output a list of paths to each keyword.
#List slots are named for their keyword.
path = "test/"
key <- c("rownames", "colnames", "data")

pathIn <- list()
for(i in seq_along(key)){
  pathIn[[key[i]]] = list.files(path = path,
                                pattern = key[i],
                                full.names = TRUE,
                                ignore.case = TRUE)
}

#Check
if(!all(sapply(pathIn, function(x) length(x) > 0))){
  cat("Error: One or more input(s) could not be found.\n")
  print(sapply(pathIn, function(x) length(x) > 0))
}else{
  cat("\nFound the following inputs: \n")
  print(sapply(pathIn, function(x) length(x) > 0))
}

