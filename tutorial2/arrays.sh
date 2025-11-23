#! /usr/bin/bash

car=('BMW' 'Toyota' 'Honda' 'Rover')
echo ${car[0]}
echo ${car[@]}
echo ${!car[@]}
echo ${#car[@]}
unset car[2]
echo ${car[@]}
echo ${#car[@]}
car[0]='Mercedes'
echo ${car[@]}
