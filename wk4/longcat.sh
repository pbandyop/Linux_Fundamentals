#!/bin/bash
FILE="/home/payel/Documents/Linux_Fundamentals/wk4/shortcat.txt"
count=$1
if [ $1 -eq 1 ]
then
  cat $FILE
elif [ $1 -gt 1 ]
then
  head -11 $FILE
  for ((c=1; c<=$1; c++))
  do
    echo "       |       |"
   done
   head -18 $FILE | tail -7
   grep "Shortcat" $FILE | sed -e 's/Shortcat/Longcat/g'
else
  echo "Ops!Seems you are trying to fool me around!"
  exit 1;
fi

#grep "Shortcat" $FILE | sed -e 's/Shortcat/Longcat/g'
#sed -e 's/Shortcat/Longcat/g' $FILE | head -21 $FILE | tail -3

