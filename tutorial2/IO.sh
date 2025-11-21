#! /usr/bin/bash

# echo $1 $2 $3
# echo $0

: '
args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}

echo $@

echo $#

arr=(1 2 3 4 5 6)
echo $# ${arr[4]}

while read line
do
    echo "$line"
done < "${1:-/dev/stdin}"

'

# ls +al 1>file1.txt 2>file2.txt
# ps > file3.txt

ls -al > file1.txt 2>&1



