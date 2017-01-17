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

wget http://www.hinterland-magazin.de/wp-content/uploads/2017/01/14-67.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/15-108.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/16-60.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland17KLEIN.pdf -P issues/
# 18 - link not working
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland19_Klein.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland20_klein.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland21_klein.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland22_klein.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland23_Klein.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland24_Klein.pdf -P issues/
# 25 - link not working
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/04/26-19.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-27.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-28.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-29.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-30.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/06/hinterland-magazin-31.pdf -P issues/
wget http://www.hinterland-magazin.de/wp-content/uploads/2016/09/hinterland-magazin-32.pdf -P issues/
