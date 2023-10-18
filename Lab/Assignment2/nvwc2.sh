filename=$1
read -r line word char filename < <(wc -lwc $filename)
echo -e 'filename\tlinecount\twordcount\tcharcount' # Enables backslash characters
echo -e "$filename\t$line\t$word\t$char"

