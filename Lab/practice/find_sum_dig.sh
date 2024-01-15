#! /bin/bash

echo "Enter a number: "
read number

sum=0
while ((number!=0))
do
  ((sum+=number%10))
  ((number/=10))
done
echo "Sum = $sum" 