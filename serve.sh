#!/bin/bash
# Script to serve the Jekyll site locally with the right bundler version

# Check if Ruby 3.4.2 is available
if command -v ruby &> /dev/null && ruby -v | grep -q '3.4.2'; then
  echo "Using Ruby 3.4.2"
  
  # Find bundler path
  BUNDLER_PATH=$(which bundle)
  echo "Found bundler at: $BUNDLER_PATH"
  
  # Start Jekyll server 
  echo "Starting Jekyll server..."
  "$BUNDLER_PATH" _2.6.5_ exec jekyll serve
else
  echo "Ruby 3.4.2 not found. Please install it or update this script."
  exit 1
fi 