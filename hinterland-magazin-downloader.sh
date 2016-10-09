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


wget http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-29.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-30.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/06/hinterland-magazin-31.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/09/hinterland-magazin-32.pdf -P issues/
