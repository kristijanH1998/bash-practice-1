#! /usr/bin/bash

read -p "First name: " firstname
case "$firstname" in
    "kristijan" | "Kristijan" | "KRISTIJAN")
        echo "Hi Kristijan"
        ;;
    *)
        echo "I don't know you"
        ;;
esac
