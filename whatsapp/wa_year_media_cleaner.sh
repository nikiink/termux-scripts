#!/bin/bash
# Usage ./wa_year_media_cleaner.sh 2024
# Delete from: Main Storage/Android/media/com.whatsapp/Media

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

echo "Removing Media/VID-${year}*"
find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name VID-${year}\* -delete
#find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name VID-${year}\*

echo "Removing Media/IMG-${year}*"
find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name IMG-${year}\* -delete
#find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name IMG-${year}\*

echo "Removing Media/AUD-${year}*"
find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name AUD-${year}\* -delete
#find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name AUD-${year}\*

echo "Removing Media/STK-${year}*"
find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name STK-${year}\* -delete
#find ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media -type f -name STK-${year}\*

# Voice Notes: removing folders YYYYWW
echo "Removing Media/WhatsApp Voice Notes/${year}*"
rm -rf ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp\ Voice\ Notes/$year*
#echo ~/storage/shared/Android/media/com.whatsapp/WhatsApp/Media/WhatsApp\ Voice\ Notes/$year*
