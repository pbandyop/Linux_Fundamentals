#!/bin/bash
FILE="/home/payel/Documents/Linux_Fundamentals/wk4/shortcat.txt"
#sed -e 's/Shortcat/Longcat/g' $FILE | tail -10 $FILE 
grep "Shortcat" $FILE | sed -e 's/Shortcat/Longcat/g' 
#tail | sed -e 's/Shortcat/Longcat/g' $FILE 
#echo "FInal output"
#cat $FILE
