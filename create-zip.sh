#!/bin/bash

# Script to create a deployable ZIP file for Vercel

# Define the output filename
OUTPUT_FILE="tickit-deployment.zip"
SCRIPT_DIR="$(pwd)"

# Create a temporary directory
TEMP_DIR=$(mktemp -d)
echo "Creating temporary directory at $TEMP_DIR"

# Copy all required files to the temp directory
echo "Copying project files..."
cp -r client server shared components.json drizzle.config.ts package.json package-lock.json postcss.config.js tailwind.config.ts tsconfig.json vite.config.ts vercel.json README.md $TEMP_DIR/

# Remove node_modules and other unnecessary files
echo "Removing unnecessary files..."
rm -rf $TEMP_DIR/node_modules
rm -rf $TEMP_DIR/*/node_modules
rm -rf $TEMP_DIR/*/dist
rm -rf $TEMP_DIR/*/.cache

# Create ZIP file
echo "Creating ZIP file..."
cd $TEMP_DIR
zip -r "$SCRIPT_DIR/$OUTPUT_FILE" *

# Cleanup
echo "Cleaning up..."
cd "$SCRIPT_DIR"
rm -rf $TEMP_DIR

if [ -f "$OUTPUT_FILE" ]; then
    echo "Deployable ZIP file created: $OUTPUT_FILE"
    echo "Size: $(du -h $OUTPUT_FILE | cut -f1)"
    echo "You can upload this file to Vercel for deployment."
else
    echo "Error: Failed to create ZIP file"
    exit 1
fi