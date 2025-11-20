#!/usr/bin/env bash

# -----------------------------
# Log Archive Tool
# -----------------------------

# Check if directory provided
if [ -z "$1" ]; then
    echo "Usage: log-archive <log-directory>"
    exit 1
fi

LOG_DIR=$1

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist."
    exit 2
fi

# Create archives directory if not exists
ARCHIVE_DIR="./archives"
mkdir -p "$ARCHIVE_DIR"

# Generate timestamp
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Archive filename
ARCHIVE_FILE="logs_archive_${TIMESTAMP}.tar.gz"

# Create archive
tar -czf "${ARCHIVE_DIR}/${ARCHIVE_FILE}" -C "$LOG_DIR" .

# Log file action
LOG_FILE="archive.log"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Archived logs from ${LOG_DIR} → ${ARCHIVE_DIR}/${ARCHIVE_FILE}" >> "$LOG_FILE"

echo "✔ Logs archived successfully!"
echo "✔ Saved to: ${ARCHIVE_DIR}/${ARCHIVE_FILE}"
echo "✔ Logged activity in: ${LOG_FILE}"
