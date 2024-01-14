#!/bin/bash
echo "until loop"
i=10
until [ $i == 1 ]
do
    echo "$i is not equal to 1";
    i=$((i-1))
done
echo "i value is $i"
echo "loop terminated"

#!/bin/bash
n=1
sum=0
until [[ $n -gt 15  || $sum -gt 20 ]]
do
    sum=$(($sum + $n))
    echo "n = $n & sum of first n = $sum"
    ((n++))
done


#!/bin/bash
condition=false
iteration_no=0
until $condition
do
    echo "Iteration no : $iteration_no"
    ((iteration_no++))
    sleep 1
done




