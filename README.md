This is a simple pair of scripts I wrote to facilitate easy printing from Linux (or Mac) to MIT printers. Existing methods require some amount of setup and/or aren't command-line based. 

`source print.sh $FILE` will run the main script on `$FILE`. The script copies the file to your Athena, and then runs `lp.sh` on Athena with appropriate parameters. 

The immediate next step is adding support for custom page range, duplex/simplex, etc. - this isn't hard to do, just needs doing. 
