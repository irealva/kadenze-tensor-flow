#!/bin/bash
FILES=/Users/ire/Documents/Programming/3.kadenze-tensor-flow/session1/imagesPNG/*
for f in $FILES
do
	#base echo
	echo "Processing $f"

	#rename
	#filename="${f##*/}"
	#base="${filename%.*}"
	#base2="${base%.*}"
	#mv $f $base2.png
	#echo $base2

	#convert from gif to png
	# convert -verbose -coalesce $f $f.png

	#convert grayscale to rgb
	convert $f -colorspace sRGB -type truecolor $f
	#convert $f -type truecolor $f
	#convert $f -set colorspace RGB $f
done