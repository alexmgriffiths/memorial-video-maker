#!/bin/bash
# Cleanup existing files
rm *.mpg
# Create videos
ffmpeg -pattern_type glob -i 'pictures/IMG_*.JPG' -c:a copy -c:v libx264 -strict 1 -shortest -vf "scale='min(1280,iw)':min'(720,ih)':force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2,format=yuv420p" 1.mp4
ffmpeg -pattern_type glob -i 'pictures/IMG_*.JPEG' -c:a copy -c:v libx264 -strict 1 -shortest -vf "scale='min(1280,iw)':min'(720,ih)':force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2,format=yuv420p" 2.mp4
ffmpeg -pattern_type glob -i 'pictures/IMG_*.PNG' -c:a copy -c:v libx264 -strict 1 -shortest -vf "scale='min(1280,iw)':min'(720,ih)':force_original_aspect_ratio=decrease,pad=1280:720:(ow-iw)/2:(oh-ih)/2,format=yuv420p" 3.mp4

# Combine videos
ffmpeg -i 1.mp4 -qscale 0 1.mpg
ffmpeg -i 2.mp4 -qscale 0 2.mpg
ffmpeg -i 3.mp4 -qscale 0 3.mpg
cat 1.mpg 2.mpg 3.mpg | ffmpeg -f mpeg -i - -qscale 0 -vcodec mpeg4 input.mp4

# Remove temp files
rm 1.mp4 2.mp4 3.mp4 *.mpg

# Slow the video down (174x length)
ffmpeg -i input.mp4 -vf "setpts=174*PTS" -c:a copy video.mp4
rm input.mp4