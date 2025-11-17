#! /usr/bin/bash

: '
number=1
while [ $number -lt 10 ]
do
    echo "$number"
    number=$((number + 1))
done

# number=1
until [ $number -eq 0 ]
do
    echo "$number"
    number=$((number - 1))
done


for i in 1 2 3 4 5
do
    echo $i
done

for j in {0..20}
do
    echo $j
done


for k in {0..10..2}
do
    echo $k
done

for (( i=0; i<5; i++ ))
do
    echo $i
done

for (( i=0; i<=10; i++ ))
do
    if [ $i -gt 5 ]
    then
       break
    fi
    echo $i
done

'

for (( i=0; i<=20; i++ ))
do
    if [ $i -lt 5 ] || [ $i -gt 15 ]
    then
        continue
    fi
    echo $i
done


