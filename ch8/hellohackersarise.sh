#! /bin/bash

echo "What is your name?"
read name
echo "Welcome" $name
echo "Do you enjoy studying about cybersecurity? y/n"
read enjoys

if [[ "$enjoys" == "y" ]]; then
    echo  "Great!" 
elif [[ "$enjoys" == "n" ]]; then
    echo "Sorry to hear that."
else
    echo "Please enter 'y' for Yes or 'n' for No"
fi

 

