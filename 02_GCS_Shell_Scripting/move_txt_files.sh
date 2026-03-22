#!/bin/bash

# Define the source and destination buckets
SOURCE_BUCKET="gs://your-source-bucket-name"
DEST_BUCKET="gs://your-destination-bucket-name"

# Log that the process is starting
echo "Starting transfer of .txt files from $SOURCE_BUCKET to $DEST_BUCKET..."

# 1. Copy the files
gsutil cp "${SOURCE_BUCKET}/*.txt" "${DEST_BUCKET}/"

# 2. Verify the copy operation was successful
if [ $? -eq 0 ]; then
    echo "Success: Files copied to destination bucket."
    
    # 3. Delete the original files from the source bucket
    echo "Deleting original files from source bucket..."
    gsutil rm "${SOURCE_BUCKET}/*.txt"
    
    echo "Transfer and cleanup complete!"
else
    # Log an error if the copy failed
    echo "Error: File transfer failed. Original files will NOT be deleted."
fi
