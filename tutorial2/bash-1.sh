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

