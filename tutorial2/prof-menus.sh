#! /usr/bin/bash


select car in BMW MERCEDES TESLA ROVER TOYOTA Exit
do
    # echo "You have selected $car"
    case $car in
    BMW)
        echo "BMW Selected";;
    MERCEDES)
        echo "Mercedes Selected";;
    TESLA)
        echo "Tesla Selected";;
    ROVER)
        echo "Rover Selected";;
    TOYOTA)
        echo "Toyota Selected";;
    Exit)
        echo "Exiting the script."
        # exit 0
        break
        ;; 
    *)
        echo "ERROR! Please selected between 1..5";;
    esac
done



# echo "press any key to continue"


: '
PS3="Choose an option: " # Set the prompt for the select loop
options=("Option 1" "Option 2" "Exit")

select opt in "${options[@]}"; do
    case $opt in
        "Option 1")
            echo "You chose Option 1."
            ;;
        "Option 2")
            echo "You chose Option 2."
            ;;
        "Exit")
            echo "Exiting the menu."
            break # This breaks out of the select loop
            ;;
        *)
            echo "Invalid option $REPLY"
            ;;
    esac
done

echo "Script continues after the select loop."
'
