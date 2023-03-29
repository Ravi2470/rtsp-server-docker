# rtsp-server-docker
You can create a rtsp server in docker for live streaming by executing following steps:

1.Clone or fork this repository

2.docker build -t <imagename> -f Dockerfile1y .

3.You can setup rtsp server in two ways:

(a).docker run  -it -e RTSP_PROTOCOLS=tcp -p 8543:8554 -p 1936:1935 -p 8877:8888 -p 8878:8889 <imagename>   ## Using Docker

(b).docker-compose up -d   ## Using docker compose .Just replace <imagename> with your docker image. 
 

4. You can access the sample videos on browser by typing:

 http://localhost:8877/video          #first video
 http://localhost:8877/video1         #second video
 
5. If you want to stream an IP camera you can do the same by making changes in stream.sh file.
you just have to add this command in stream.sh

ffmpeg -re -i rtsp://username:password@ip_address:port/cam/realmonitor?channel=1&subtype=0 -c copy -f rtsp rtsp://localhost:8543/video

###
In this command, you need to replace username, password, ip_address, and port with the actual values of your IP camera. 
The channel and subtype parameters are optional and depend on your camera's configuration. 
Finally, you need to replace the output RTSP URL with the one you want to use for your streaming server.

###
