#! /bin/bash
command1="echo"
message1="Hi!"
eval "$command1 $message1"
var_name1="message2"
command2="echo"
message2="Testing"
eval "$command2 \$$var_name1"
eval "$(cat vars.txt)"
echo "$FOO $BAZ"
# exec pwd
# test -f commands.sh

if test -e "vars.txt"; then
    echo "vars.txt exists!"
fi
string1="one"
string2="o3ne"
if test "$string1" = "$string2"; then
    echo "string1 equals string2"
else
    echo "string1 is not equal to string2"
fi
num1=3
num2=3
if test "$num1" = "$num2"; then
    echo "num1 equals num2"
fi
if [[ "$num1" -eq "$num2" ]]; then
    echo "num1 equals num2 again"
fi

echo "$string1"
unset string1
echo "$string1"
type umask
