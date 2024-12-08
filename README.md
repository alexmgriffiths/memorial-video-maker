# Images to Video with Music

A simple script-based tool to create a video slideshow from images and music.
Originally created for the funeral of Lisa Stringer. Rest in peace.
### Requirements

    Operating System: Linux
    Dependencies: FFmpeg installed and accessible in your system's PATH.

### Usage
### 1. Convert Pictures to Video

    Place all your photos in the pictures folder.
    Supported file extensions: .PNG, .JPEG, .JPG.
        To remove support for an extension, modify the pictures.sh script accordingly.
        To add support for other file extensions, copy and adapt the relevant lines in the script.

    Run the following command:

    ./pictures.sh

#

### 2. Combine Audio Files

    Add your audio files to the music folder.

    Create a list.txt file in the same folder. Add the names of the audio files you want to include, one per line, in the desired order.

    Run the following command:

    ./music.sh

#

### 3. Generate the Final Video

    Run the following command to combine the generated video and audio:

    ./combine.sh

#

### Notes

    Ensure all file and folder names are correctly specified, and that the scripts have execute permissions:

    chmod +x pictures.sh music.sh combine.sh

    Edit the scripts as needed to fit your specific use case.

#

### Contributing

Feel free to suggest improvements or report issues.