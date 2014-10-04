#!/bin/bash
count=1
cd $1/hipstafied/
echo "Convert's current working directory: `pwd`."
for inputfile in $1/*jpg
do
prefix=${inputfile%.jpg}
outputfile=$count-hipstah.jpg
count=$[count+1];
#echo $outputfile
convert -sepia-tone 60% +polaroid $inputfile $outputfile
done
