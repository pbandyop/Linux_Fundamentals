#!/bin/bash
sum=0
count=0

for number in $@;
do
  sum=$sum+$number;
  count=$[count+1];
done

echo "scale=2; ($sum)/$count" | bc

