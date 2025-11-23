#! /usr/bin/bash

function funcName()
{
    echo "this is new function"
}

funcName

function func2() 
{
    echo $1 $2
}

func2 Hi there

function funcCheck()
{
    returningValue="I love Linux"
    echo "$returningValue"
}

returningValue="I love Mac"
echo $returningValue

funcCheck
echo $returningValue
