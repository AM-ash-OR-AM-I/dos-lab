echo "Enter the value of the year:"
read yy
if [[ (yy%4 -eq 0 && yy%100 -ne 0) || yy%400 -eq 0 ]];
then
  echo "Leap year"
else
  echo "Not leap year"
fi
