#!/bin/bash
# Combine songs
ffmpeg -safe 0 -f concat -i list.txt -c copy music.mp3