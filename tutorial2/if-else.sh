#! /usr/bin/bash

# echo "Hello bash scripting" > file.txt

# cat > file.txt

# cat >> file.txt

: '
line
line
line
line
'

: '
cat << kreativ
this is hello creative text
add another line
kreativ
'

#count=10
count=9
if [ $count -eq 10 ]
then
    echo "the condition is true"
else 
    echo "the condition is false"
fi

if [ $count == 10 ]; then
    echo "the condition is again true"
fi

if (( $count < 10 ))
then
    echo "Count is less than 10"
elif (( $count > 10 ))
then
    echo "Count is more than 10"
else 
    echo "Count is equal to 10"
fi

age=10

if [ "$age" -gt 18 ] && [ "$age" -lt 40 ]
then
    echo "Age is correct"
else
    echo "Age is not correct"
fi

if [ "${age}" -eq 10 ] || [ "${age}" -gt 5 ]; then
    echo  "Age is ok"
else
    echo "Age not ok"
fi

age=9
if [ "${age}" -gt 18 -o "${age}" -lt 10 ]
then
    echo "age is not between 10 and 18"
else 
    echo "age is between 10 and 18"
fi
if [[ "${age}" -eq 9 ]]; then
    echo "Age is 9"
else
    echo "Age is not 9"
fi







