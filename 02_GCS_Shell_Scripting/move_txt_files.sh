#!/bin/bash

# Define the source and destination buckets
SOURCE_BUCKET="gs://your-source-bucket-name"
DEST_BUCKET="gs://your-destination-bucket-name"

# Step 1: Log that the process is starting
echo "Starting transfer of .txt files from $SOURCE_BUCKET to $DEST_BUCKET..."
