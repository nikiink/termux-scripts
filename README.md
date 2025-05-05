# Termux Scripts

Useful scripts to use with Termux on Android.

## WhatsApp Scripts
- Create 7z archive for media in year (whatsapp/wa_year_media_archive.sh)
- Create 7z archive of chat database and documents (whatsapp/wa_msgstore_docs_archive.sh)
- Clean media for a specific year (whatsapp/wa_year_media_cleaner.sh)

## Camera Scripts
- Create 7z archive for camera photos and videos in year (camera/camera_year_archive.sh)
- Clean camera photos and videos for a specific year (camera/camera_year_cleaner.sh)

## Usage
Before using the scripts is required to:
- setup the storage in termux
- install 7z package

on termux console run these commands before running scripts:
```bash
termux-setup-storage
pkg install 7zip
```
The scripts use internal and external storage (sd card). When creating a 7zip archive
if the source is internal, the archive is created on external storage and viceversa.

The archive files are created in:
- ~/storage/media-0 -> Internal/Android/media/com.termux
- ~/storage/media-1 -> SD Card/Android/media/com.termux

### Executing scripts

The commands are bash scripts, so must be marked as executables using `chmod +x script.sh` command to be executed directly (`./script.sh`) or can be executed using bash command `bash script.sh`.

1. copy the script on android in a folder of choice (for example on internal storage)
2. open termux
3. move to the directory where the script is located

        cd storage/shared

4. run the script

        bash wa_year_media_archive.sh 2010

Or marking as executables:
```bash
# move where chmod +x works
mv ~/storage/shared/wa_year_media_archive.sh ~
chmod +x ~/*.sh
./wa_year_media_archive.sh 2010
```

### Scripts operations

#### Whatsapp Year Media Archive

```bash
./wa_year_media_archive.sh 2010
```
Create an archive of the given year (2010 in the example) with all whatsapp media of that year and saves it in `SD Card/Android/media/com.termux/wa-media-2010.7z`.

#### Whatsapp Msgstore and Documents Archive

```bash
./wa_msgstore_docs_archive.sh
```
Create an archive of the chat history database (msgstore) and of all whatsapp documents and saves it in `SD Card/Android/media/com.termux/wa-msgstore-and-docs.7z`.

#### WhatsApp Media Year Cleaner

```bash
./wa_year_media_cleaner.sh 2010
```

> [!CAUTION]
> Caution!, make sure you have saved media of that year before using this script,
> for example creating an year archive before.

This scripts deletes all WhatsApp media of the given year (2010 in the example).

#### Camera Year Archive

```bash
./camera_year_archive.sh 2010
```
Create an archive of the given year (2010 in the example) with all camera images and
videos of that year and saves it in `Internal Memory/Android/media/com.termux/camera-2010.7z`

#### Camera Year Cleaner

```bash
./camera_year_cleaner.sh 2010
```

> [!CAUTION]
> Caution!, make sure you have saved camera images and videos of that year
> before using this script, for example creating an year archive before.

This scripts deletes all camera images and videos of the given year (2010 in the example).

