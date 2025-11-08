
Here is an example of using getopts in a Bash script to parse command-line options:
Code

#!/bin/bash

# Initialize variables
username=""
verbose=false
output_file=""

# Define usage function
usage() {
    echo "Usage: $0 [-u <username>] [-o <output_file>] [-v]"
    echo "  -u <username>  Specify a username"
    echo "  -o <output_file>  Specify an output file"
    echo "  -v             Enable verbose mode"
    exit 1
}

# Parse options using getopts
# The optstring "u:o:v" defines the valid options:
#   'u:' means -u requires an argument
#   'o:' means -o requires an argument
#   'v' means -v does not require an argument
while getopts "u:o:v" opt; do
    case "$opt" in
        u)
            username="$OPTARG"
            ;;
        o)
            output_file="$OPTARG"
            ;;
        v)
            verbose=true
            ;;
        \?) # Handle invalid options
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
        :) # Handle options requiring an argument but none provided
            echo "Option -$OPTARG requires an argument." >&2
            usage
            ;;
    esac
done

# Shift off the options so that positional arguments can be accessed
shift $((OPTIND-1))

# Now you can use the parsed options and any remaining positional arguments
echo "--- Script Execution ---"
echo "Username: ${username:-Not specified}" # Use default if not set
echo "Output File: ${output_file:-Not specified}"
echo "Verbose Mode: $verbose"

if [ "$verbose" = true ]; then
    echo "Verbose output enabled."
fi

if [ -n "$output_file" ]; then
    echo "Writing output to $output_file..."
    echo "Script output data" > "$output_file"
fi

# Access any remaining positional arguments
if [ "$#" -gt 0 ]; then
    echo "Remaining positional arguments: $@"
fi

Explanation:

    #!/bin/bash: Shebang line specifying the interpreter.
    Variable Initialization: Sets default values for script variables.
    usage() function: Defines how to display usage information if incorrect options are provided.
    while getopts "u:o:v" opt; do ... done:
        getopts is a Bash built-in for parsing short options.
        "u:o:v" is the optstring. A colon after an option letter (e.g., u:) indicates that the option requires an argument.
        opt is the variable where getopts stores the current option character.
        $OPTARG stores the argument of an option that requires one (e.g., the value after -u).
        $OPTIND is the index of the next argument to be processed. 
    case "$opt" in ... esac:
        This block handles each recognized option.
        u), o), v): Actions taken for each valid option.
        \?): Handles unrecognized options.
        :): Handles options that require an argument but none was provided. 
    shift $((OPTIND-1)): After getopts finishes, OPTIND points to the first non-option argument. shift removes the processed options from the positional parameters ($1, $2, etc.), allowing access to any remaining arguments.
    Script Logic: The rest of the script utilizes the variables populated by getopts to perform its actions.
    Default Values: echo "Username: ${username:-Not specified}" demonstrates how to provide a default value if an option (like -u) was not provided. 

How to run the script:
Code

./your_script_name.sh -u john_doe -o log.txt -v argument1 argument2
./your_script_name.sh -u alice
./your_script_name.sh -v -o report.csv
./your_script_name.sh -x # Invalid option
./your_script_name.sh -u # Missing argument for -u
