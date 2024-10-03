#!/bin/bash

# Define input and output directories
input_dir="/app/images/fulls"
output_dir="/app/images/thumbs"

# Calculate the total number of files to process
total_files=$(find "$input_dir" -type f -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" | wc -l)
processed_files=0

# Print message indicating the start of the process
echo "Starting image conversion process..."

# Loop through all files in the input directory
for file in "$input_dir"/*; do
    f=$(basename "$file")

    # If the thumbnail does not exist, convert the image
    if [ ! -f "$output_dir/$f" ]; then
        convert "$file" -resize 512x "$output_dir/$f"
        processed_files=$((processed_files + 1))

        # Calculate and display the completion percentage
        percent=$((processed_files * 100 / total_files))
        echo "Completion percentage: $percent%"
    fi
done

# Print a final message indicating completion
echo "Image conversion process completed."
