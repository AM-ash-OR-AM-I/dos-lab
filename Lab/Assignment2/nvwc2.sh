filename=$1
read line word char filename < <(wc -lwc $filename)
echo -e 'filename\tlinecount\twordcount\tcharcount' # Enables backslash characters
echo -e "$filename\t\t$line\t\t$word\t\t$char"

