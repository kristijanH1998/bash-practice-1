#! /usr/bin/bash

echo "Enter filename to print from awk"
read fileName

if [[ -f $fileName ]]
then
    # echo "Enter the text to search"
    # read grepvar
    # grep -i -v $grepvar $fileName
    # awk '{print}' $fileName
    # awk '/Windows/ {print $1}' $fileName
    awk '/Linux/ {print $3,$4}' $fileName 
else
    echo "$fileName does not exist"
fi

