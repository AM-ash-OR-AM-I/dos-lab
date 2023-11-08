echo "Enter internal marks and percentage in attendance:"
read marks percentage

if [[ $marks >=20 && $percentage>75 ]]; then
  echo "Allowed"
else
  echo "Not Allowed"
fi
