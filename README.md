This is a simple pair of scripts I wrote to facilitate easy printing from Linux (or Mac) to MIT printers. Existing methods require some amount of setup and/or aren't command-line based. 

`source print.sh $FILE` will run the main script on `$FILE`. The script copies the file to your Athena, and then runs `lp.sh` on Athena with appropriate parameters. 

Probably the best way to actually use this is to add the code for `print.sh` as a function in your `.bashrc`, so then you can run it wherever/whenever. 

```shell
pharos()
{
    #Print to athena!
	source ~/Documents/mitprint/print.sh $1 $2 $3 $4
}
```

The immediate next step is adding support for custom page range, duplex/simplex, etc. - this isn't hard to do, just needs doing. 
