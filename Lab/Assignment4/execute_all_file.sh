#! /bin/bash

for file in *.c
do
  echo "File: $file"
  gcc $file -o ${file%.c} && ./${file%.c}
  echo "\n################"
done