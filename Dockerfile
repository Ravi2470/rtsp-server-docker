FROM aler9/rtsp-simple-server as rtsp
FROM alpine:3.14
RUN apk add --no-cache ffmpeg
COPY --from=rtsp /rtsp-simple-server /
COPY --from=rtsp /rtsp-simple-server.yml /
RUN apk update && apk add dumb-init
COPY stream.sh .
COPY sample-30s.mp4 .
COPY sample-5s.mp4 .
EXPOSE 8554
CMD ["sh", "-c", "dumb-init /rtsp-simple-server & sleep 10 && chmod +x stream.sh && ./stream.sh"]

