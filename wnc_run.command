#!/bin/sh

#This script will generate plots and maps for the WNC Newsletter.

echo Changing working directory...
cd "$(dirname "$0")"
pwd

echo "Enter month (numeric) of interest:"
read month
echo $month > month.txt

echo "Enter year (YYYY) of interest:"
read year
echo $year > year.txt

#ask to do this or no
#sudo R -e "update.packages(ask = F, repos = 'http://mirrors.nics.utk.edu/cran/')"

sudo Rscript wnc_master9.R
