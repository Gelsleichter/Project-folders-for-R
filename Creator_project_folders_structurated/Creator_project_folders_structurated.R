############################################################################################
### R script: Creator of project folder structured
### Version: 0.1, August 2022
### Yuri Andrei Gelsleichter (YuriGelsleichter@gmail.com)
### License: CC-BY-NC-SA
############################################################################################
#    ___      ___     __   __          
#   / _ \    / _/__  / /__/ /__ _______
#  / , _/   / _/ _ \/ / _  / -_) __(_-<
# /_/|_|   /_/ \___/_/\_,_/\__/_/ /___/
# 
# figlet -f smslant R folders ### run on terminal ctrl+alt+enter (for linux)
# showfigfonts (for linux)
############################################################################################

### Set and check the working directory AUTOMATICALLY
### Auto setwd
install.packages("rstudioapi")
library(rstudioapi); current_path <- getActiveDocumentContext()$path; setwd(dirname(current_path)) ### https://eranraviv.com/r-tips-and-tricks-working-directory/
getwd()
gc(); rm(list=ls())

### Naming project folders 
folder_root <- "mortalkombat"
inp <- "input"
outp <- "outp"
## Those below will be inside "input" and "outputs" folders
file_type1 <- "raster" 
file_type2 <- "shp" 
file_type3 <- "script" 
file_type4 <- "dataset" 

### Creating subfolder path 
d_input <- paste0(collapse= "/", c(getwd(), folder_root, inp))
### Creating subsubfolder path 
d_in_ft1 <- paste0(collapse= "/", c(getwd(), folder_root, inp, file_type1))
d_in_ft2 <- paste0(collapse= "/", c(getwd(), folder_root, inp, file_type2))
d_in_ft4 <- paste0(collapse= "/", c(getwd(), folder_root, inp, file_type4))
### Creating subfolder path 
d_output <- paste0(collapse= "/", c(getwd(), folder_root, outp))
### Creating subsubfolder path 
d_out_plt <- paste0(collapse= "/", c(getwd(), folder_root, outp, "graphs_plots"))
d_out_ft1 <- paste0(collapse= "/", c(getwd(), folder_root, outp, file_type1))
d_out_ft2 <- paste0(collapse= "/", c(getwd(), folder_root, outp, file_type2))
d_out_ft4 <- paste0(collapse= "/", c(getwd(), folder_root, outp, file_type4))
### Creating subfolder path 
d_script <- paste0(collapse= "/", c(getwd(), folder_root, file_type3))
### Creating subsubfolder path 
d_script_v <- paste0(collapse= "/", c(getwd(), folder_root, file_type3, "versions"))
d_script_pr <- paste0(collapse= "/", c(getwd(), folder_root, file_type3, "concept_proof_tests"))
### Creating subfolder path
d_m.data_doc <- paste0(collapse= "/", c(getwd(), folder_root, "metadata"))

### Paths in vector
dirs <- c(d_input,
          d_in_ft1,
          d_in_ft2,
          d_in_ft4,
          d_output,
          d_out_plt,
          d_out_ft1,
          d_out_ft2,
          d_out_ft4,
          d_script,
          d_script_v,
          d_script_pr,
          d_m.data_doc)

### Create all in loop
for (i in dirs) {
  if (file.exists(i)) {
    cat("The folder already exists")
  } else {
    dir.create(i, showWarnings = T, recursive = T)
  }
}

### Create the Version 1 of R file  
scripts_name <- "Topic_name"
script_r <- paste0(scripts_name, "_V1_", format(Sys.Date(), format="%B_%d_%y"), ".R")
if (file.exists(script_r)) {
  cat("The folder already exists")
} else {
  file.create(paste0(collapse= "/", c(d_script, script_r)), showWarnings = T, recursive = T)
}
