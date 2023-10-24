#! /bin/bash
echo "Enter filename:"
read filename
read -r line word char filename < <(wc -lwc $filename)
echo "Filename: $filename
Line Count: $line
Word Count: $word
Char count: $char"
