#!/bin/sh

ffmpeg -re -stream_loop -1 -i sample-30s.mp4 -c copy -f rtsp rtsp://localhost:8543/video > /dev/null 2>&1 &
sleep 5
ffmpeg -re -stream_loop -1 -i sample-5s.mp4 -c copy -f rtsp rtsp://localhost:8543/video1 > /dev/null 2>&1 

###

ffmpeg -re -i rtsp://username:password@ip_address:port/cam/realmonitor?channel=1&subtype=0 -c copy -f rtsp rtsp://10.20.20.231:8543/video

In this command, you need to replace username, password, ip_address, and port with the actual values of your IP camera. 
The channel and subtype parameters are optional and depend on your camera's configuration. 
Finally, you need to replace the output RTSP URL with the one you want to use for your streaming server.

###
