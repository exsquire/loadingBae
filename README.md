# loadingBae
Regular expression method of loading pipeline inputs. Making it easy to swap out input files discourages one-off analysis scripts and encourages the use of central input directories. 

**To Use:**
- Submit path to "inputs" folder and vector of keywords
  - key words must match 1-to-1 with filenames in folder, case insensitive
  - paths are relative to the working directory of loadingBae(), run in same directory as main analysis script
- Output is named list with path to key word match
- ex.) 
```
list.files("./inputfolder")
> samp_rownames.txt, samp_colnames.rds, samp_data.csv 

pathList <- loadingBae("./inputfolder", c("rownames", "colnames", "data"))

data <- read.csv(pathList[["data"]])
rownames(data) <- readLines(pathList[["rownames"]])
colnames(data) <- readRDS(pathList[["colnames"]]
```
