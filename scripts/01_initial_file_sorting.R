##########################################################################
# THIS CODE MAKES SOME QUALITY CHECKS IF THE SITE AND TOMST IDs LOOKS FINE
#

library(tidyverse)

data_dir <- "E:/evo2022"

# List binary and command files to be removed from repository if also data file exists

f <- c(list.files(data_dir, pattern = "binary_", recursive = T, full.names = T),
       list.files(data_dir, pattern = "command_", recursive = T, full.names = T))

for(i in f){ 
  if(file.exists(gsub("binary_","data_",i)) | file.exists(gsub("command_","data_",i))){
    unlink(i)
  } else {
    print(paste0("DATA FILE MISSING!!! ", i))
  } 
}
# If no printed messages then no problems


