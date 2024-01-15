#! /bin/bash
echo "Enter the year: "
read year

if [[ ($(((year%4==0 && year%100!=0) || year%400==0)) -eq 1)]] ;
then
  echo "Leap year"
else
  echo "Not a leap year"
fi