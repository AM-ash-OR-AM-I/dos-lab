#!/bin/bash
for i in *
do
if [ -d $i ]
then
echo "$i is a directory"
elif [ -f $i ] && [ ! -x $i ]
then
echo "$i is a non-executable file"
fi
done
