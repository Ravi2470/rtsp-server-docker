#!/bin/sh

ffmpeg -re -stream_loop -1 -i sample-30s.mp4 -c copy -f rtsp rtsp://10.20.20.231:8543/video > /dev/null 2>&1 &
sleep 5
ffmpeg -re -stream_loop -1 -i sample-5s.mp4 -c copy -f rtsp rtsp://10.20.20.231:8543/video1 > /dev/null 2>&1 
