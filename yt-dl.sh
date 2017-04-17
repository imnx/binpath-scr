#!/bin/bash
if [[ ${1} == "--batch" ]]; then
shift
youtube-dl --yes-playlist --prefer-ffmpeg --ffmpeg-location /usr/bin/ffmpeg --audio-format mp3 --audio-quality 192k --recode-video mp4 \
--format mp4 --rate-limit 1000k --retries 5 --force-ipv4 --socket-timeout 15 --no-check-certificate --prefer-insecure --batch-file $@
else
youtube-dl --yes-playlist --prefer-ffmpeg --ffmpeg-location /usr/bin/ffmpeg --audio-format mp3 --audio-quality 192k --recode-video mp4 \
--format mp4 --rate-limit 1000k --retries 5 --force-ipv4 --socket-timeout 15 --no-check-certificate --prefer-insecure --batch-file $@
fi
