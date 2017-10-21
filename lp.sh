#!/bin/bash

#This script runs on Athena. It runs the lpr command, taking particular
#input parameters, printing the file, and then deleting it.#parameters are: filename, copies, sides, pages-per-side


#For readability
filename=$1
copies=$2
sides=$3

lp -n $copies -o sides=$sides $filename

#remove the file that was scp'd in by the main script
rm $filename
