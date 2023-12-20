# counts from 1 to 10 but skips the number 5 using the continue statement. 
#The script exits the loop when the count reaches 8 using the break statement.
#!/bin/bash
count=1
until (( count > 10 ))
do
    # Skip number 5 using the 'continue' statement
    if (( count == 5 ))
    then
        (( count++ ))
        continue
    fi
    echo "Count is $count"
    # Exit the loop when count reaches 8 using the 'break' statement
    if (( count == 8 ))
    then
        break
    fi
    (( count++ ))
done
echo "Loop finished!"

#The script generates random numbers between 1 and 10 until it generates a number > 8.
#!/bin/bash
until (( num > 8 ))
do
    # Generate a random number between 1 and 10
    num=$(( (RANDOM % 10) + 1 ))
    echo "Generated number: $num"
done
echo "Loop finished!"

#!/bin/bash
count=1
until (( count > 10 ))
do
    if (( count % 2 == 0 ))
    then
        echo "Even number: $count"
    else
        echo "Odd number: $count"
    fi
    if (( count == 5 ))
    then
        echo "Reached 5! Continuing to next iteration..."
        (( count++ ))
        continue
    fi
    if (( count == 8 ))
    then
        echo "Reached 8! Exiting the loop..."
        break
    fi
    (( count++ ))
done
echo "Loop finished!"
