# loadingBae
Regular expression method of loading pipeline inputs

**To Use:**
- Submit path to "inputs" folder and vector of keywords
  - key words must match 1-to-1 with filenames in folder, case insensitive
- Output is named list with path to key word match
- ex.) 
```
ls("./inputfolder")
> samp_rownames.txt, samp_colnames.rds, samp_data.csv 

pathList <- loadingBae("./inputfolder", c("rownames", "colnames", "data"))

data <- read.csv(pathList[["data"]])
rownames(data) <- readLines(pathList[["rownames"]])
colnames(data) <- readRDS(pathList[["colnames"]]
```
