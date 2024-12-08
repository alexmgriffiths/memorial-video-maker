#!/bin/bash
ffmpeg -framerate 10 -pattern_type glob -i '*.png' -c:v libx264 movie.mp4