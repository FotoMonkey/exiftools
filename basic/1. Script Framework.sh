#! /bin/bash

# Create a loop to iterate through all files passed to the script
# via the command line.
for f in "$@"
do
    # Print the filename
    echo $f
done