#!/bin/bash
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

#!/bin/bash
# For loop with number range
for i in {0..5}
do
        echo "Element $i"
done

#!/bin/bash
# For loop with letter range
for i in {a..f}
do
        echo "Element $i"
done

#!/bin/bash
# For loop with reverse number range
for i in {5..0}
do
        echo "Element $i"
done

#!/bin/bash
# For loop with range increment numbers
for i in {0..10..2}
do
        echo "Element $i"
done

#!/bin/bash
for i in $(seq 1 2 10)
do
   echo "Welcome $i times"
done

## $@ expands to the positional parameters, starting from one.  ##
for k in $@
do
    echo "Script arg is $k"
done

#!/bin/bash
# For loop C-style
for ((i = 0 ; i < 5 ; i++)); 
do
  echo "Welcome $i times in C-style for loop"
done

#!/bin/bash
# Define an array called fruits
fruits=("Apple" "Mango" "Pineapple" "Banana" "Orange" "Papaya" "Watermelon")
len=${#fruits[*]}   # Get total elements in an array
 
# Print it using C style bash for loop
for (( i=0; i<len; i++ ));
do
	echo "${fruits[$i]}"
done

#!/bin/bash
# Infinite for loop
for (( ; ; ))
do
      echo "CTRL+C to exit"
done


