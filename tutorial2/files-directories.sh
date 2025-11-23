#! /usr/bin/bash

: '
echo "Enter directory name to check"
read direct
# mkdir -p Directory2

if [ -d "$direct" ]
then
    echo "$direct exists"
else
    echo "$direct does not exist"
fi
'
: '
echo "Enter the file name to create"
read fileName

if [ -f "$fileName" ]
then
    echo "$fileName exists"
else
    echo "$fileName does not exist"
    touch $fileName
fi
'
# touch $fileName
: '
echo "Enter filename in which you want to append"
read filename

if [[ -f "$filename" ]]
then
    echo "Enter text you want to append"
    read text
    echo $text >> $filename 
else
    echo "$filename does not exist"
fi
'
: '
echo "Enter filename from which you want to read"
read filename

if [[ -f "$filename" ]]
then
    while IFS=" " read -r line
    do 
        echo "$line"
    done < $filename
else
    echo "$filename does not exist"
fi
'

echo "Enter name of file you want to remove"
read filename

if [[ -f "$filename" ]]
then
    rm $filename
    echo "file has been deleted successfully"
else
    echo "$filename does not exist"
fi







