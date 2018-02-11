#!/bin/bash

#This script runs on Athena. It runs the lpr command, taking particular
#input parameters, printing the file, and then deleting it.#parameters are: filename, copies, sides, pages-per-side


#For readability
filename=$1
pageranges=$2
copies=$3
sides=$4

lp -n $copies -o fit-to-page -o orientation-requested=3 -o page-ranges=$pageranges -o sides=$sides $filename

#remove the file that was scp'd in by the main script
rm $filename
