#!/bin/sh
# ------------------------------------------------------------------
# [Author] joergi77 - https://github.com/joergi77
#          downloader for all Hinterland Magazin issues
#          they are downloadable for free under http://www.hinterland-magazin.de/
#          or you can buy the paper issues under: http://www.hinterland-magazin.de/bestellen.php
#          this script is under GNU GENERAL PUBLIC LICENSE v3.0
# ------------------------------------------------------------------

VERSION=0.1.0
USAGE="Usage: sh hinterland-magazin-downloader.sh"


if [ ! -d "issues" ]; then
 mkdir issues
fi

i=17
issues=31

while [ $i -le $issues ]
do
	url17="http://www.hinterland-magazin.de/pdf/Hinterland17KLEIN.pdf"
	url18="http://www.hinterland-magazin.de/pdf/Hinterland18Klein.pdf"
	url2x="http://www.hinterland-magazin.de/pdf/Hinterland"$i"_klein.pdf"
	url="http://www.hinterland-magazin.de/pdf/Hinterland"$i"_Klein.pdf"

	# issue 17 has extra url
	if [ "$i" -eq 17 ]; then
		wget $url17 -P issues/
	fi

	# issue 18 has extra url
	if [ "$i" -eq 18 ]; then
		wget $url18 -P issues/		
	fi

	# issue 20 + 21 + 22 has extra url
	if [ "$i" -eq 20 -o "$i" -eq 21 -o "$i" -eq 22 ]; then
		wget $url2x -P issues/		
	fi

	# standard url
	if [ "$i" -ge 23 -o "$i" -eq 19 ]; then
		wget $url -P issues/		
	fi
	

	i=$(( i+1 ))
done




