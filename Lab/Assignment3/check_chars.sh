#! /bin/bash

echo "Enter input:"
read mychars

prefix="You have entered: $mychars, which is"

case $mychars in
  [a-z])
    echo "$prefix Lower case alphabet";;
  [A-Z])
    echo "$prefix upper case alphabet";;
  [0-9])
    echo "$prefix a digit";;
  ?)
    echo "$prefix special character";;
  *)
    echo "$prefix more than 1 character"
esac
