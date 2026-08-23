#!/bin/bash

# Ensure a file path was provided
if [ -z "$1" ]; then
    echo "Usage: render-mmd.sh /path/to/file.mmd"
    exit 1
fi

# Get the absolute path of the target file
TARGET_FILE=$(realpath "$1")

# Extract the directory containing the file and the filename itself
TARGET_DIR=$(dirname "$TARGET_FILE")
FILE_NAME=$(basename "$TARGET_FILE")

# Verify the file actually exists
if [ ! -f "$TARGET_FILE" ]; then
    echo "Error: File '$TARGET_FILE' does not exist."
    exit 1
fi

# DYNAMIC PATH RESOLUTION: Find the mermaid-render root folder
SCRIPT_DIR=$(dirname "$(realpath "$0")")
MERMAID_RENDER_DIR=$(dirname "$SCRIPT_DIR")

echo "Starting Mermaid viewer..."
echo "Target Folder: $TARGET_DIR"

# Change directory to where the .mmd file lives
cd "$TARGET_DIR"

# Launch browser-sync relative to the isolated directory
node "$MERMAID_RENDER_DIR/node_modules/browser-sync/dist/bin.js" start \
    --server "." \
    --ss "$MERMAID_RENDER_DIR" \
    --files "$FILE_NAME" \
    --host "127.0.0.1" \
    --no-ui \
    --startPath "mermaid-render.html?file=$FILE_NAME"
    
