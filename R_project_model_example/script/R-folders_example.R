############################################################################################
### R script: Project folder structure
### Version: 0.1, November 2020
### Yuri Andrei Gelsleichter
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

### load the data

### conventional method
# df <- read.csv("C:/Users/steve/Documents/R_project_model/Input_data/data_t.csv")

### Ninja method, with the way you can either move the project folder, share, or send it easily
df <- read.csv("../Input_data/data_t.csv")

df <- df$v1-2

df <- round(df, 2)

df

### conventional method
# write.csv(df, "C:/Users/steve/Documents/R_project_model/Output_data/otp_d.csv")

### Ninja method, with the way you can either move the project folder, share, or send it easily
write.csv(df, "../Output_data/otp_d.csv")

### tips: use the auto setwd() helps with the productive
