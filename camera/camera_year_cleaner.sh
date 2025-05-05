#!/bin/bash
# Usage ./camera_year_cleaner.sh 2024
# Delete from: Media Card/DCIM/Camera

# Check the number of arguments, one argument, year to save
if [ "$#" -ne 1 ]; then
    echo "Please insert year to delete media"
    exit
fi

year="$1"
echo "Year to clean: $year"

if [ ${#year} -lt 4 ]; then
    echo Year must be almost 4 digits, ${#year} given
    exit
fi

sd_path=`df | grep storage | grep - | awk '{ print $6 }'`

echo "SD card path found: $sd_path"

echo "Removing $sd_path/DCIM/Camera/${year}*"
#echo $sd_path/DCIM/Camera/$year*
rm $sd_path/DCIM/Camera/$year*

echo "Removing $sd_path/DCIM/Camera/IMG_${year}*"
#echo $sd_path/DCIM/Camera/IMG_$year*
rm $sd_path/DCIM/Camera/IMG_$year*

echo "Removing $sd_path/DCIM/Camera/VID_${year}*"
#echo $sd_path/DCIM/Camera/VID_$year*
rm $sd_path/DCIM/Camera/VID_$year*

