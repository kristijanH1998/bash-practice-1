#! /usr/bin/bash

: '
MESSAGE="Hello LinuxHint Audience"
export MESSAGE
./secondPipes.sh
'

echo "enter first string"
read st1
echo "enter second string"
read st2

: '
if [ "$st1" == "st2" ]
then
    echo "both strings match"
else
    echo "strings dont match"
fi

'

if [ "$st1" \< "$st2" ]
then
    echo "$st1 is smaller than $st2"
elif [ "$st1" \> "$st2" ]
then
    echo "$st2 is smaller than $st1"
else
    echo "strings are equal"
fi



