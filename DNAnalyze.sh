# Part D- BASH script
pwd #check location

#!/bin/bash - creating BASH file

for NNN in {001..100} #number of files 
do
  #! /usr/bin/python3
  #!/usr/bin/env Rscript
  python3 DNAgen.py #calling python script 
  chmod +x DNAgen.py #making script executable
  python3 -c 'import DNAgen; DNAgen.DNAgen("DNAseq'$NNN'",1000)' #using DNAgen custom function from python script
  Rscript BASE.R "DNAseq"$NNN #create count files for all 100 DNAseq files
  cat DNAseq$NNN.count | sort >> allDNA.csv #combine and sort all files 
done
