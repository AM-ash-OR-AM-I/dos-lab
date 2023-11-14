echo "Enter number:"
read number
sum=0
while [[ number -ne 0 ]]; do
    sum=$((sum + number % 10))
    number=$((number / 10))
done
number=$sum
echo "Sum of dig: $number"