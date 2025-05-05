#!/bin/bash
# Usage ./camera_year_archive.sh 2024
# Source: Media Card/DCIM/Camera
# Output: Main Storage/Android/media/com.termux/camera-2024.7z.001

# Check the number of arguments, one argument, year to save
if [ "$#" -ne 1 ]; then
    echo "Please insert year to save"
    exit
fi

echo "Year to save: $1"

year="$1"

# Using double quotes creates a folder '~'
filename=~/storage/media-0/camera-$year.7z

# Removes old file and also 7z.00N files
rm -v $filename*

echo "7zip file name: $filename"

sd_path=`df | grep storage | grep - | awk '{ print $6 }'`

echo "SD card path found: $sd_path"

7z a -v3g -mx=0 "$filename" -r0 \
  $sd_path/DCIM/Camera/$year\* \
  $sd_path/DCIM/Camera/IMG_$year\* \
  $sd_path/DCIM/Camera/VID_$year\*

