#!/bin/bash
# calculator.sh
# This script will take three command line arguments, where the
# first argument will specify the first operand, second argument will specify the operator
# and the third argument will specify the second operand and display the output of the
# arithmetic operation specified in the following format: op1 operator op2 = result .
# If the arguments will be passed in any other sequence, it will display the message:
# “Invalid input “
# Enter input in following format:
# op1 operator op2
# The symbols to be used for different operators are as follows:
# Addition:+Subtraction:-
# Multiplication:xDivision:/
# Modulo:%Exponent:^

if [ $# -ne 3 ]
then
  echo "Invalid input"
  exit 1
fi

op1=$1
op2=$3
operator=$2
prefix="$op1 $operator $op2"

case $operator in
  +)
    echo "$prefix = `expr $op1 + $op2`";;
  -)
    echo "$prefix = `expr $op1 - $op2`";;
  x)
    echo "$prefix = `expr $op1 \* $op2`";;
  /)
    echo "$prefix = `expr $op1 / $op2`";;
  %)
    echo "$prefix = `expr $op1 % $op2`";;
  ^)
    echo "$prefix = `expr $op1 \^ $op2`";;
  *)
    echo "Invalid input";;
esac