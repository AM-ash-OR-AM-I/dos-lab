echo "Enter the value of the year:"
read yy
div_by_4=$((yy%4))
div_by_100=$((yy%100))
div_vy_400=$((yy%400))
if [[ ($div_by_4 -eq 0) && ($div_by_100 -ne 0) || ($div_vy_400 -eq 0) ]] then
  echo "Leap year"
else
  echo "Not leap year"
fi
