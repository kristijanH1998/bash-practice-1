#! /usr/bin/bash

# echo $1
set -x
echo "Enter filename to substitute using sed"
read fileName
set +x

if [[ -f $fileName ]]
then
    # cat $fileName | sed 's/i/I/g'
    sed 's/Linux/Unix/g' $fileName >> newsedfile.txt
else
    echo "$fileName does not exist"
fi

