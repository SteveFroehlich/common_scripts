#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
echo "Failed. Did you forget to pass in the path the the CSV folder?"
echo " "
echo "Usage: $0 <csv-folder-path>"
exit 1
fi

CSV_PATH="$1"

if [ ! -d "$CSV_PATH" ]; then
echo "Error: Directory does not exist: $CSV_PATH"
exit 1
fi

# Resolve to an absolute path (works on macOS and Linux)

CSV_PATH="$(cd "$CSV_PATH" && pwd)"

# Remove existing container if present

if docker ps -a --format '{{.Names}}' | grep -qx 'only-csv-app'; then
docker rm -f only-csv-app >/dev/null
fi

docker run -d \
  --name only-csv-app \
  -p 8000:8000 \
  -v "$CSV_PATH:/app/data" \
  only-csv-img

echo "Started only-csv-app"
echo "CSV directory: $CSV_PATH"
echo "App URL: http://localhost:8000"

