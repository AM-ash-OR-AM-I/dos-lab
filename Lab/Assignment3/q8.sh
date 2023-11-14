# Compare 3 numbers and print smallest

echo "Enter 3 numbers:"

read n1 n2 n3


if [[ $n1 -lt $n2 ]]; then
    if [[ $n1 -lt $n3 ]]; then
        s=$n1
    else
        s=$n3
    fi
else
    if [[ $n2 -lt $n3 ]]; then
        s=$n2
    else
        s=$n3
    fi
fi

echo "Smallest: $s"