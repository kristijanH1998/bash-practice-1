#! /usr/bin/bash

: '
MESSAGE="Hello LinuxHint Audience"
export MESSAGE
./secondPipes.sh
'
: '
echo "enter first string"
read st1
echo "enter second string"
read st2
'
: '
if [ "$st1" == "st2" ]
then
    echo "both strings match"
else
    echo "strings dont match"
fi

'

: '
if [ "$st1" \< "$st2" ]
then
    echo "$st1 is smaller than $st2"
elif [ "$st1" \> "$st2" ]
then
    echo "$st2 is smaller than $st1"
else
    echo "strings are equal"
fi


c=$st1$st2
echo $c

echo ${st1^}
echo ${st1^^}

'
: '
n1=4
n2=20
echo $(( n1 + n2 ))
echo $(expr $n1 + $n2 )
echo "Enter Hex Number of your choice"
read Hex

echo -n "The decimal value of $Hex is: "
echo "obase=10; ibase=16; $Hex" | bc 
'
: '
declare -r pwdfile=/etc/passwd
echo $pwdfile
pwdfile=/etc/abc.txt
echo $pwdfile
'



