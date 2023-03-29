FROM aler9/rtsp-simple-server AS rtsp
FROM alpine:3.14
RUN apk add --no-cache ffmpeg
COPY --from=rtsp /rtsp-simple-server /
COPY --from=rtsp /rtsp-simple-server.yml /
COPY stream.sh .
COPY sample-30s.mp4 .
EXPOSE 8554
CMD ["sh", "-c", "/rtsp-simple-server && sleep20 && chmod +x stream.sh && ./stream.sh"]
