#!/bin/bash
# Add music to video
ffmpeg -i video.mp4 -i music.mp3 -c copy -map 0:v:0 -map 1:a:0 final.mp4
rm video.mp4 music.mp4