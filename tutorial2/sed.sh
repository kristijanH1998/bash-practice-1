#! /usr/bin/bash

# echo $1

echo "Enter filename to substitute using sed"
read fileName

if [[ -f $fileName ]]
then
    # cat $fileName | sed 's/i/I/g'
    sed 's/Linux/Unix/g' $fileName >> newsedfile.txt
else
    echo "$fileName does not exist"
fi

