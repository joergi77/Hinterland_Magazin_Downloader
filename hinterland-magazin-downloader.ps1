#!/bin/bash
# ------------------------------------------------------------------
# [Author] joergi - https://github.com/joergi/Hinterland_Magazin_Downloader

#          downloader for all Hinterland Magazin issues
#          they are downloadable for free under http://www.hinterland-magazin.de/
#          or you can buy the paper issues under: http://www.hinterland-magazin.de/bestellen.php
#          this script is under GNU GENERAL PUBLIC LICENSE v3.0
#
#		   Windows scripts are based on @rubemlrm scripts for MagPiDownloader
#          https://github.com/joergi/MagPiDownloader/tree/master/windows
#
# ------------------------------------------------------------------
#
# VERSION=0.1.0
# USAGE="Usage: ./hinterland-magazin-downloader.ps1"




# Check if directory dont exist and try create
if( -Not (Test-Path -Path "issues" ) )
{
    New-Item -ItemType directory -Path "issues"
}

$hinterland_issues = @(

	"http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland17KLEIN.pdf",
	# 18 - link not working
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland19_Klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland20_klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland21_klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/12/Hinterland22_klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland23_Klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/11/Hinterland24_Klein.pdf",
	# 25 - link not working
	# 26 - link not working
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-27.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/11/hinterland-magazin-28.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-29.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/07/hinterland-magazin-30.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/06/hinterland-magazin-31.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2016/09/hinterland-magazin-32.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2017/01/hinterland-magazin-ausgabe33.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2017/05/Hinterland34-Klein.pdf",
	"http://www.hinterland-magazin.de/wp-content/uploads/2017/09/Hinterland35-klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2017/12/hinterland36-klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2018/04/Hinterland37-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2018/06/Hinterland38-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2018/10/Hinterland39Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2019/01/Hinterland40-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2019/04/Hinterland41-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2019/07/Hinterland42-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2019/10/Hinterland43-Klein.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2020/03/Hinterland-Magazin-44_klein2.pdf",
  "http://www.hinterland-magazin.de/wp-content/uploads/2020/05/Hinterland45-klein.pdf"

)

$web = New-Object system.net.webclient

foreach($issue in $hinterland_issues)
{
try
	{
	    Write-Host $env:appdata
	    Write-Host $issue

	    $issue_name = $issue
	    $issue_name = $issue_name.Replace("http://www.hinterland-magazin.de/wp-content/uploads/","")
	    $issue_name = $issue_name.Replace("2016/","")
	    $issue_name = $issue_name.Replace("2017/","")
	    $issue_name = $issue_name.Replace("01/","")
	    $issue_name = $issue_name.Replace("02/","")
	    $issue_name = $issue_name.Replace("03/","")
	    $issue_name = $issue_name.Replace("04/","")
	    $issue_name = $issue_name.Replace("05/","")
	    $issue_name = $issue_name.Replace("06/","")
	    $issue_name = $issue_name.Replace("07/","")
	    $issue_name = $issue_name.Replace("08/","")
	    $issue_name = $issue_name.Replace("09/","")
	    $issue_name = $issue_name.Replace("10/","")
		$issue_name = $issue_name.Replace("11/","")
	    $issue_name = $issue_name.Replace("12/","")

	    $web.DownloadFile($issue, "$PSScriptRoot\hinterland_issues\\$issue_name")
	} Catch
	{
	    Write-Host "Ocorred an error trying download " + $issue +" - with name "+ $issue_name
            exit 1
	}
}
