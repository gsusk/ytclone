FROM tiangolo/nginx-rtmp:latest


RUN apt-get update && apt-get install -y ffmpeg

# Your RTMP dashboard + config
COPY stat.xsl /usr/local/nginx/html/stat.xsl
COPY nginx.conf /etc/nginx/nginx.conf