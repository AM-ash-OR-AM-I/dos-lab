dir=$1
for file in $dir/*.sh; do
	echo -e "Program: $file\n"
	cat $file
	echo -e "\n\n"
done
