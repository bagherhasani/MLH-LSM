#!/bin/bash 

filepath=$1

count=0
result=0

while [ "$result" != "1" ]; do
stndrd_output=$(bash $filepath 2>error.txt)
result=$?
count=$((count+1))
done

echo "It took $count runs to fail"
echo "Standard output:"
echo $stndrd_output
echo "Standard error"
cat error.txt
 
