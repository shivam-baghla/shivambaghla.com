#!/bin/bash

set -e

echo "🚀 Starting local build process..."

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "❌ Error: pandoc is not installed"
    echo "Install with: brew install pandoc (macOS) or apt-get install pandoc (Ubuntu)"
    exit 1
fi

echo "✅ Pandoc version:"
pandoc -v | head -1

# Clean and create build directory
echo "🧹 Cleaning build directory..."
rm -rf build
mkdir -p build

# Check if theme files exist
if [[ ! -f "theme/blog-theme.html" ]]; then
    echo "❌ Error: theme/blog-theme.html not found"
    exit 1
fi

if [[ ! -f "theme/landing-theme.html" ]]; then
    echo "❌ Error: theme/landing-theme.html not found"
    exit 1
fi

echo "🎨 Creating templates with absolute CSS path..."
current_dir=$(pwd)

# Copy static files (images, HTML, etc.)
echo "📁 Copying static files..."
for i in $(find . -type f \( -name "*.avif" -o -name "*.png" -o -name "*.jpg" -o -name "*.jpeg" -o -name "*.gif" -o -name "*.html" \) ! -path "./build/*" ! -path "./.git/*"); do
    echo "Copying: $i"
    target_dir="build/$(dirname $i)"
    mkdir -p "$target_dir"
    cp "$i" "$target_dir/"
done

# Convert markdown files
echo "📝 Converting Markdown files..."
for i in $(find . -type f -name "*.md" ! -path "./build/*" ! -path "./.git/*"); do
    echo "Processing: $i"
    target_dir="build/$(dirname $i)"
    mkdir -p "$target_dir"
    output_file="$target_dir/$(basename "$i" .md).html"
    
    # Determine which theme to use based on file path
    if [[ $i == ./blog/* ]]; then
        theme_file="theme/blog-theme.html"
        echo "  Using blog theme for: $i"
    else
        theme_file="theme/landing-theme.html"
        echo "  Using landing theme for: $i"
    fi
    
    # Create template with absolute CSS path for current theme
    temp_template=$(mktemp)
    sed "s|./theme/theme.css|$current_dir/theme/theme.css|g" "$theme_file" > "$temp_template"
    encoded_template=$(echo -n "$(cat "$temp_template")" | base64)
    rm "$temp_template"
    
    pandoc -s "$i" -o "$output_file" --template="data:text/html;base64,$encoded_template" --embed-resources --verbose
done

echo "✅ Build complete! Files generated in build/ directory"
echo "🌐 Will now start local python http.server @ http://localhost:12345"
python3 -m http.server 12345 -d build