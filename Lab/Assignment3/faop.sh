echo "Enter two numbers:"
read float1 float2
echo -e "Addition: $(echo "$float1+$float2" | bc)\nSubtraction: $(echo "$float1-$float2" | bc)\nMultiplication: $(echo "$float1*$float2" | bc)\nInteger Division: $(echo "$float1\$float2" | bc)\nFloat Division: $(echo "$float1/$float2" | bc -l)\nModular Division: $(echo "$float1%$float2" | bc)"
# awk "BEGIN {print($num1+$num2)}"
