#!/bin/bash  

# Script to back up a directory  

SOURCE_DIR="/path/to/source"   # Change this to your source directory  
BACKUP_DIR="/path/to/backup"    # Change this to your backup directory  
DATE=$(date +'%Y-%m-%d_%H-%M-%S') # Current date and time  

# Create backup directory if it doesn't exist  
mkdir -p "$BACKUP_DIR"  

# Perform the backup using rsync  
rsync -av --delete "$SOURCE_DIR/" "$BACKUP_DIR/backup_$DATE/"  

echo "Backup of $SOURCE_DIR completed successfully at $BACKUP_DIR/backup_$DATE/"