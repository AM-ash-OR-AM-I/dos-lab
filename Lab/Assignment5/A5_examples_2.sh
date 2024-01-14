#!/bin/bash
# Infinite for loop with break
i=0
for (( ; ; ))
do
        echo "Iteration: ${i}"
        (( i++ ))
        if [[ i -gt 10 ]]
        then
                break;
        fi
done
echo "Done!"

#!/bin/bash
# For loop with continue statement
for i in {1..100}
do
        if [[ $i%11 -ne 0 ]]
        then
                continue
        fi
        echo $i
done

#!/bin/bash
# For loop with array
array=(12 23 34 14 25)
for i in ${array[@]}
do
        echo "Element $i"
done

#!/bin/bash
# For loop with array indices
array=(1 2 3 4 5)
for i in ${!array[@]}
do
        echo "Array indices $i"
done

#!/bin/bash
# For loop with string
strings="I am a string"
for i in ${strings}
do
        echo "String $i"
done

#!/bin/bash
# For loop with files
for f in *.sh
do
        echo $f
done

#!/bin/bash
# For loop with command substitution
list=`cat 9.txt`
# Alternatively, use list=$(cat list.txt)
for i in $list
do
        echo $i
done
