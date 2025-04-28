#!/bin/bash

# Remove the Google+ menu item with ID menu-item-9, matching the exact line
find . -type f -name "*.html" -exec sed -i '' '/<li id="menu-item-9" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-9"><a target="_blank" href="https:\/\/plus\.google\.com.*<\/a><\/li>/d' {} \;

echo "Google+ menu item removed from all HTML files." 