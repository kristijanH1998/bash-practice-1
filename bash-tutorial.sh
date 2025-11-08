#! /bin/bash

: '
echo "Hello World!"

# left off: 11:47
# link: https://www.youtube.com/watch?v=tK9Oc6AEnR4

MY_LOCATION_FROM="/home/kali/Desktop/scripts"
FILE_TO_CP="practice-file"
FOLDER="practice-folder"
MY_LOCATION_TO="/home/kali/Desktop/scripts/$FOLDER"

mkdir "$FOLDER"
cp "$MY_LOCATION_FROM/$FILE_TO_CP" "$MY_LOCATION_TO" 


FIRST_NAME=Kristijan
LAST_NAME=Hornung
echo Hello $FIRST_NAME $LAST_NAME

echo What is your first name?
read FIRST_NAME
echo What is your last name?
read LAST_NAME
echo Hello $FIRST_NAME $LAST_NAME

echo Hello $1 $2
echo $3

FILENAME="hello.txt"
touch $FILENAME
echo Hello World! > $FILENAME
cat $FILENAME
echo Another Hello! >> $FILENAME
cat $FILENAME
rm $FILENAME

FILENAME=practice-file
wc -w $FILENAME
wc -w < $FILENAME
wc -l < $FILENAME

if [[ "A" < "B" ]]; then
    echo "A comes before B"
fi

if [[ 10 -lt 15 ]]; then
    echo "10 is lesser than 15"
else 
    echo "10 is greater than 15"
fi
'

NUM1=""
NUM2=""
echo "To quit, press 'q'"
while true; do
    echo "Enter first number: "
    read NUM1
    if [ $NUM1 == "q" ]; then
        break
    fi 
    echo "Enter second number: "
    read NUM2
    if [ $NUM2 == "q" ]; then
        break
    fi
    if test $NUM1 -gt $NUM2; then
        echo $NUM1 is greater than $NUM2
    elif test $NUM1 -lt $NUM2; then
        echo $NUM1 is lesser than $NUM2
    else
        echo $NUM1 and $NUM2 are equal
    fi
done

