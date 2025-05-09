#!/bin/bash

# Script to prepare deployment package for Vercel

# Create a dist directory if it doesn't exist
mkdir -p dist

# Clean up previous builds
rm -rf dist/*

# Build the application
echo "Building application..."
npm run build

# Copy necessary files for deployment
echo "Copying deployment files..."
cp vercel.json dist/
cp README.md dist/
cp -r public dist/ 2>/dev/null || true

echo "Deployment package created in dist/ directory"
echo "To deploy to Vercel, follow the instructions in README.md"