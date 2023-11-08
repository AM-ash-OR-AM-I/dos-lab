file1=$1
file2=$2

if cmp -s file1 file2
then
  echo "Same file, deleting..."
  rm $2
else
  echo "Files are different"
fi
