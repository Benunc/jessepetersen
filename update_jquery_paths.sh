#!/bin/bash

# Create js directory in theme if it doesn't exist
mkdir -p wp-content/themes/jessepetersen/js/jquery

# Copy jQuery files to theme directory
cp wp-includes/js/jquery/jquery.min.js wp-content/themes/jessepetersen/js/jquery/
cp wp-includes/js/jquery/jquery-migrate.min.js wp-content/themes/jessepetersen/js/jquery/

# Update jQuery paths in all HTML files
find . -type f -name "*.html" -exec sed -i '' 's|/wp-includes/js/jquery/jquery.min.js|/wp-content/themes/jessepetersen/js/jquery/jquery.min.js|g' {} \;
find . -type f -name "*.html" -exec sed -i '' 's|/wp-includes/js/jquery/jquery-migrate.min.js|/wp-content/themes/jessepetersen/js/jquery/jquery-migrate.min.js|g' {} \;

echo "jQuery files copied and paths updated in all HTML files." 