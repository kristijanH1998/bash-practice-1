#! /usr/bin/bash

echo "Enter filename to search text from"
read fileName

if [[ -f $fileName ]]
then
    echo "Enter the text to search"
    read grepvar
    grep -i -n $grepvar $fileName
    echo "The matching lines are: "
    grep -i -n $grepvar $fileName | grep -o '[0-9]\+' | tr '\n' ', ' | sed 's/,$//'
    cnt=$(grep -i -c $grepvar $fileName)
    printf "\n"
    echo "$grepvar occurs $cnt times in $fileName"
    cntNot=$(grep -i -v $grepvar $fileName | wc -l)
    echo "$grepvar does not occur on $cntNot lines in $fileName"
else
    echo "$fileName does not exist"
fi

