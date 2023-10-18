echo "Enter two numbers:"
read float1 float2
echo "Addition: $(echo "$float1+$float2" | bc)"
echo "Subtraction: $(echo "$float1-$float2" | bc)"
echo "Multiplication: $(echo "$float1*$float2" | bc)"
echo "Integer Division: $(echo "$float1/$float2" | bc)"
echo "Float Division: $(echo "$float1/$float2" | bc -l)"
echo "Modular Division: $(echo "$float1%$float2" | bc)"
# awk "BEGIN {print($num1+$num2)}"
