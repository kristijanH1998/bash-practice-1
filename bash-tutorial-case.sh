#! /bin/bash

: '
case ${1,,} in 
    kali | administrator) 
        echo "Hello, you're the boss here!"
        ;;
    help)
        echo "Just enter your username!"
        ;;
    *)
        echo "Hello there. You're not the boss of me. Enter a valid username!"
esac

MY_ARRAY=(1 2 3 4 5 6)
echo "${MY_ARRAY}"
echo "${MY_ARRAY[@]}"
echo "${MY_ARRAY[0]}"
echo "${MY_ARRAY[3]}"
MY_ARRAY[0]=5
echo "${MY_ARRAY[0]}"
MY_ARRAY[0]+=10
echo "${MY_ARRAY[0]}"
unset MY_ARRAY[0]
echo "${MY_ARRAY[0]}"
'

declare -A associative_arr_1
associative_arr_1=([key1]="value1" [key2]="value2" [key3]="value3")
# echo "${associative_arr_1[key1]}"
# associative_arr_1[key1]="newval1"
# echo "${associative_arr_1[key1]}"
# unset associative_arr_1[key3]

echo ${!associative_arr_1[@]}
echo ${!associative_arr_1[*]}
echo ${#associative_arr_1[@]}
