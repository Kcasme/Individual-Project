#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Mar 16 17:30:45 2022

@author: kayleighcasmey
"""


# A- Write a Python script called DNAgen.py that will generate a
# FASTA file containing randomly generated sequences: 

#check wd
import os
cwd = os.getcwd()
print(cwd)
os.chdir('/Users/kayleighcasmey/Individual Project')


def DNAgen (Filename, Nb): #custom function to specify for Filename and # of bp
    Filename = open(Filename+'.seq','w+') #write/read a custom filename with seq extension
    bp = ["A","G","T","C"] #basepairs
    import random # import library
    randseq = random.choices(bp, k = Nb) #Nb random basepairs
    sequence = ''.join(randseq) #joining sequence 
    Filename.write('> Sequence \n' + sequence) #FASTA formatting with 'sequence' inside file
    Filename.close() #close file 

#DNAgen("Seq", 100) #run fucntion to create RandomSeq.seq file with Nb = 100

