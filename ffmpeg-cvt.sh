#!/bin/bash

mkdir -p "./output/"

for inFile in *.mkv; do
ffmpeg -i "${inFile}" -c:v libx264 -preset veryfast -profile:v high -level 4.1 -tune film -x264opts level=30:ref=6:deblock=-2,-2:dct-decimate=0:fast_pskip=0:direct=auto:qpmax=51:keyint=300:bitrate=900:threads=12 -c:a aac -strict -2 -b:a 192k -ar 48000 -map_metadata -1 "./output/${inFile::(-4)}-cvt.mp4"
done

for inFile in *.avi; do
ffmpeg -i "${inFile}" -c:v libx264 -preset veryfast -profile:v high -level 4.1 -tune film -x264opts level=30:ref=6:deblock=-2,-2:dct-decimate=0:fast_pskip=0:direct=auto:qpmax=51:keyint=300:bitrate=900:threads=12 -c:a aac -strict -2 -b:a 192k -ar 48000 -map_metadata -1 "./output/${inFile::(-4)}-cvt.mp4"
done

for inFile in *.mp4; do
ffmpeg -i "${inFile}" -c:v libx264 -preset veryfast -profile:v high -level 4.1 -tune film -x264opts level=30:ref=6:deblock=-2,-2:dct-decimate=0:fast_pskip=0:direct=auto:qpmax=51:keyint=300:bitrate=900:threads=12 -c:a aac -strict -2 -b:a 192k -ar 48000 -map_metadata -1 "./output/${inFile::(-4)}-cvt.mp4"
done


