#!/bin/bash


#Takes as input a file and prints it! Automatically uses duplex and whatnot. 
#I'm not sure what the optimal way to add "advanced settings" is since most of the
#time I'd be happiest with a fire-and-forget print thing without having to tell it
#that I don't want advanced settings. In any case this isn't too hard to configure

filename=$1
pageranges=$2
copies=$3
sides=$4
numberup=$4


default_pageranges=1-99999
default_copies=1 
default_sides="two-sided-long-edge" 
default_numberup=1

#For now, everything is set to defaults but downstream
#might add easier ways to control this from execution. The
#biggest thing to add is page ranges, which is really easy
#with lp, but I'm not sure how best to integrate into this 
#flow 

copies="${copies:-$default_copies}"
sides="${sides:-$default_sides}"
pageranges="${pageranges:-$default_pageranges}"
numberup="${numberup:-$default_numberup}"

echo "Printing file $filename"
echo "PAGE RANGE: $pageranges"
echo "COPIES: $copies"
echo "SIDEDNESS: $sides"
echo "NUMBER UP: $numberup"

cp $1 printing.pdf 

echo "Do these all look fine? If so, press any key. If not, Ctrl+C"
read _
echo "What's your Athena username?"
read username
echo "$username, huh? That's a nice name"
echo "Copying your file over to Athena"
scp printing.pdf $username@athena.dialup.mit.edu:~
echo "Printing your file!"
ssh $username@athena.dialup.mit.edu "bash -s printing.pdf $pageranges $copies $sides $numberup" < ~/Documents/mitprint/lp.sh

rm printing.pdf



