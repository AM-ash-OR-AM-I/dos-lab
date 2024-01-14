#!/bin/ksh
c=1
while [ $c -le 5 ]
do
	echo "Welcome $c times"
	(( c++ ))
done

#!/usr/bin/bash 

file=9.txt

while read -r line;
do
    echo $line
done < "$file"

#!/bin/bash

i=0
while((i < 12))
do
   echo $i
   ((i+=2))
done

#!/usr/bin/bash 

i=1
while :
do
    echo $i
    if [ $i -eq 20 ];
    then
        echo "This is end of the loop"
        break
    fi
    ((i++))
done

#!/usr/bin/bash 

i=1
while [ $i -lt 30 ];
do
    ((i++))
    if [[ $(( $i % 5 )) -ne 0 ]];
    then
        continue
    fi
    echo $i
done

#! /bin/bash

file=9.txt
echo "Enter the content into the file $file"
while read line
do
    echo $line >> $file
done

#while [ "$var" = "string_value" ] 
#while [[ "$var" == "string_value" ]]
#while [ $num -le 10 ] 
#while (( num <= 10 ))
#while true
#while false



