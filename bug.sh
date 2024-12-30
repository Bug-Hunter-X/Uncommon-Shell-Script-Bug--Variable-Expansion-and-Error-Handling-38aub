#!/bin/bash

# This script attempts to process a file, but it has a subtle error.

filename="my_file.txt"

if [ -f "$filename" ]; then
  # The error is here: Using single quotes prevents variable expansion
  while read -r line; do
    echo "Processing line: $line"
  done < '$filename'
  # If there's an error in the file, the script won't exit correctly and will continue processing.
  echo "File processed successfully."
else
  echo "Error: File '$filename' not found."
fi