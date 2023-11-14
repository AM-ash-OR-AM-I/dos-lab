echo "Enter cost price and selling price"
read cp sp
if [[ $((sp>cp)) -eq 1 ]] then 
  echo "Profit: $((sp-cp))"
else
  echo "Loss: -$((cp-sp))"
fi
