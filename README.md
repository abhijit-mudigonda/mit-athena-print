This is a simple pair of scripts I wrote to facilitate easy printing from Linux (or Mac) to MIT printers. Existing methods require some amount of setup and/or aren't command-line based. 

`source print.sh $FILE` will run the main script on `$FILE`. The script copies the file to your Athena, and then runs `lp.sh` on Athena with appropriate parameters. 

Probably the best way to actually use this is to add the following code to your `.bashrc`, so then you can run it wherever/whenever 

```shell
pharos()
{
	source ~/Documents/mitprint/print.sh $1 $2 $3 $4
}
```

The arguments currently available are:
1. *Filename* - Path to file being printed. For now, only PDF printing is supported. 
2. *Page range* - Range of pages to print. The default value is `1-99999` (which hopefully is your entire document). I believe piecewise ranges (e.g. `1-5,7-10`) also work, although I haven't tested it. 
3. *Copies* - Number of copies to print. The default value is `1`
4. *Sidedness* - Whether to print double or single sided. The default value is `two-sided-long-edge`, for usual duplex printing. Other options are `two-sided-short-edge` and `one-sided`
5. *N-up* - How many pages per sheet. Default value is `1`

```shell
pharos blah.pdf 5-10 2 one-sided 2
```

