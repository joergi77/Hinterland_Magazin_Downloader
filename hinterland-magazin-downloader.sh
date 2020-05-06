#!/bin/bash
# ------------------------------------------------------------------
# [Author] joergi - https://github.com/joergi/Hinterland_Magazin_Downloader

#          downloader for all Hinterland Magazin issues
#          they are downloadable for free under http://www.hinterland-magazin.de/
#          or you can buy the paper issues under: http://www.hinterland-magazin.de/bestellen.php
#          this script is under GNU GENERAL PUBLIC LICENSE v3.0
# ------------------------------------------------------------------
#
# VERSION=0.1.0
# USAGE="Usage: sh hinterland-magazin-downloader.sh"


OUTDIR=issues/

if [ ! -d "$OUTDIR" ]; then
 mkdir $OUTDIR
fi


# 13 - link not working
# 14 - link not working
# 15 - link not working
# 16 - link not working
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland17KLEIN.pdf -P $OUTDIR
# 18 - link not working
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland19_Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland20_klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland21_klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland22_klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland23_Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland24_Klein.pdf -P $OUTDIR
# 25 - link not working
# 26 - link not workinghttp://www.hinterland-magazin.de/ausgabe-nr-25/
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-27.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-28.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-29.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-30.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/06/hinterland-magazin-31.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2016/09/hinterland-magazin-32.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2017/01/hinterland-magazin-ausgabe33.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2017/05/Hinterland34-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2017/09/Hinterland35-klein.pdf -P $OUTDIR

wget -N http://www.hinterland-magazin.de/wp-content/uploads/2017/12/hinterland36-klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2018/04/Hinterland37-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2018/06/Hinterland38-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2018/10/Hinterland39Klein.pdf -P $OUTDIR
#40 - link not working
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2019/04/Hinterland41-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2019/07/Hinterland42-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2019/10/Hinterland43-Klein.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2020/03/Hinterland-Magazin-44_klein2.pdf -P $OUTDIR
wget -N http://www.hinterland-magazin.de/wp-content/uploads/2020/05/Hinterland45-klein.pdf -P $OUTDIR
