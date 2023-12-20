#! /bin/bash

# Iterate over a sequence
for i in 1,2,3,4
do
  echo "Element: $i"
done 

# Range of elements
for i in {1..5..2}
do
  echo "ith element: $i"
done

echo "################"

# c style length of elements iterate over array
arr=("Hello" "World" "A" "List")
len=${#arr[@]}
for ((i=0; i<$len; i++));
do 
  echo "arr[i]: ${arr[$i]}"
done