#!/bin/bash

# This script corrects the error by using double quotes for variable expansion
# and improves error handling.

filename="my_file.txt"

if [ -f "$filename" ]; then
  while read -r line; do
    echo "Processing line: $line"
  done < "$filename"
  if [ $? -ne 0 ]; then
    echo "Error reading file. Exiting."
    exit 1
  fi
  echo "File processed successfully."
else
  echo "Error: File '$filename' not found."
  exit 1
fi