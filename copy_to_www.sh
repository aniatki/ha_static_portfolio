#!/bin/bash

# Source directory (current directory)
SOURCE_DIR="."

# Destination directory (../../www)
DEST_DIR="../../www"

# Check if the destination directory exists, if not, create it
if [ ! -d "$DEST_DIR" ]; then
  mkdir -p "$DEST_DIR"
fi

# Copy all files and directories recursively from source to destination
cp -r "$SOURCE_DIR"/* "$DEST_DIR"

# Check if the copy was successful
if [ $? -eq 0 ]; then
  echo "All files and folders have been successfully copied to $DEST_DIR."
else
  echo "An error occurred while copying files and folders."
fi
