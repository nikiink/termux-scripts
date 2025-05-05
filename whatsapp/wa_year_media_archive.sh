#!/bin/bash
# Usage ./wa_year_media_archive.sh 2024
# Source: Main Storage/Android/media/com.whatsapp/Media
# Output: Media Card/Android/media/com.termux/wa-media-2024.7z.001

# Check the number of arguments, one argument, year to save
if [ "$#" -ne 1 ]; then
    echo "Please insert year to save"
    exit
fi

echo "Year to save: $1"

year="$1"

# Using double quotes creates a folder '~'
filename=~/storage/media-1/wa-media-$year.7z

# Removes old file and also 7z.00N files
rm -v $filename*

echo "7zip file name: $filename"

7z a -v3g -mx=0 "$filename" -r0 \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/VID-$year\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/IMG-$year\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/AUD-$year\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/PTT-$year\* \
  ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/STK-$year\*

