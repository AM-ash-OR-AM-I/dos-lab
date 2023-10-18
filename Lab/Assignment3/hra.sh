echo "Enter salary:"
read salary
da=$(echo ".4*$salary" | bc )
hr=$(echo ".2*$salary"|bc)
total=$(echo "$salary+$da+$hr"|bc)
echo "Total salary: $total"