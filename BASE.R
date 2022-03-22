#!/usr/bin/env Rscript
#Part B

getwd() #check wd

#install packages 
#install.packages("readr") 
#install.packages("stringr")

library(stringr)
library(readr)

#creating custom function to use Filename.seq and create Filename.count

args = commandArgs(trailingOnly=TRUE)

BASE <- function(Filename){
  file = read_file(f = paste(Filename,".seq", sep = "")) #reading inserted filename .seq (sep removes space before .seq)
  s = str_count(file, c("A","G","T","C")) #counting bases 
  basecount = paste(s, collapse = ",") #creating data set with commas b/w base counts
  write_file(basecount, f = paste(Filename,".count", sep = "")) #writing file with basecounts inside and .count extension
}              

BASE(args[1])

#BASE("Seq") 





