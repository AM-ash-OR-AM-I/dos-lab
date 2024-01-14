#!/bin/bash
if [ $# -eq 0 ]
then
echo "No arguments supplied"
else
for i in $*
do
if [ -e $i ]
then
echo "$i already exists"
else
if [ ! -d mydir ]
then
mkdir mydir
fi
touch mydir/$i
fi
done
fi
