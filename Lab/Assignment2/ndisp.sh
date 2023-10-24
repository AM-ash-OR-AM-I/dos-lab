#! /bin/bash
n="$1"
m="$2"
filename="$3"
echo -e "First n lines:\n$(head -$n $filename)\n"
echo -e "Last m lines:\n$(tail -$m $filename)"