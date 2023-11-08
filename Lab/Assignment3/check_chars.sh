#! /bin/bash
shopt -s extglob;

echo "Enter input:"
read mychars

case $mychars in
  [a-z])
    echo "You have entered Lower case alphabet";;
  [A-Z])
    echo "You have entered upper case alphabet";;
  [0-9])
    echo "You have entered a digit";;
  ?)
    echo "You have entered special character";;
  *)
    echo "You have entred more than 1 character"
esac
