#! /bin/bash

info() {
    echo "Usage..."
}

while getopts "abc:" opt; do
    case "$opt" in
        a)
             echo "Option -a was provided."
             info
             ;;
        b)
             echo "Option -b was provided"
             ;;
        c)
             echo "Option -c was provided with argument: $OPTARG"
             ;;
        \?)
             echo "Invalid option: -$OPTARG" >&2
             exit 1
             ;;
        *)
             echo "unknown error." >&2
             exit 1
             ;;
    esac
done



                                  
