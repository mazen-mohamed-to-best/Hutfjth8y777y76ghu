#!/bin/bash
set -e

ARCHIVE="to-best-flutter.tar.gz"
OUTPUT_DIR="extracted"

mkdir -p "$OUTPUT_DIR"

if [[ "$ARCHIVE" == *.tar.gz || "$ARCHIVE" == *.tgz ]]; then
  tar -xzf "$ARCHIVE" -C "$OUTPUT_DIR"
elif [[ "$ARCHIVE" == *.zip ]]; then
  unzip -q "$ARCHIVE" -d "$OUTPUT_DIR"
else
  echo "Unsupported archive format"
  exit 1
fi

echo "Done. Files extracted to: $OUTPUT_DIR"
find "$OUTPUT_DIR" -type f | sort
