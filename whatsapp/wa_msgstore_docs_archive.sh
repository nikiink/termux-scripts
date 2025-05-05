#!/bin/bash
# Usage ./wa_msgstore_docs_archive.sh
# Source: Main Storage/Android/media/com.whatsapp/WhatsApp/Backups, Databases, Media/WhatsApp Documents
# Output: Media Card/Android/media/com.termux/wa-msgstore-and-docs.7z

echo "Archiving msgstore and documents"

# Using double quotes creates a folder '~'
filename=~/storage/media-1/wa-msgstore-and-docs.7z

# Removes old file and also 7z.00N files
rm -v $filename*

echo "Nome file: $filename"

7z a -v3g -mx=0 "$filename" -r0 \
  -xr0!WhatsApp A\* \
  -xr0!WhatsApp I\* \
  -xr0!WhatsApp S\* \
  -xr0!WhatsApp V\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/WhatsApp\ Document\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Backup\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Database\*

