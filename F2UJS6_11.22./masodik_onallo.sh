#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "Usage: $0 input_csv_file output_csv_file"
  exit 1
fi

input_file=$1

output_file=$2

if [ ! -f "$input_file" ]; then
  echo "Error: Input file not found."
  exit 1
fi

awk 'BEGIN {FS=OFS=","} {if ($4 == "gmail") $4 = "citromail"; print}' "$input_file" > "$output_file"

echo "Gmail lecserelve citromailre"


