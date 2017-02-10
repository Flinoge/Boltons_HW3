#!/usr/bin/awk	-f


BEGIN { FS = "," }
{
	if (length($4) == 8)
		year=substr($4,5,8)
	if (length($4) == 9)
		year=substr($4,6,9)
	if (length($4) == 10)
		year=substr($4,7,10)
	
	if (year > 1900)
	{
		print $2 ", from " $4 " to " $5 

	}
}


