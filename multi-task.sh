#!/bin/bash

# Define initial variables
counter=1 # Counter variable to increment the -c flag
filename=${1:-tasks.csv} # Filename of the CSV file to read, use 'tasks.csv' as default

# Read the CSV file line by line and assign the values to variables
while IFS=',' read -r t_value x_value l_value q_value; do
  # Execute the command with the corresponding variables
  node bottok.js \
    -d \
    -o \
    -q "$q_value" \
    -c cookies$counter.json \
    -t "$t_value" \
    -l "$l_value" \
    -x "$x_value" \
    -s proxies.txt &
  # Increment the counter
  counter=$((counter+1))
  # Wait for 90 seconds before executing the next command
  sleep 90
done < "$filename"
