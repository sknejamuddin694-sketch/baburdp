FROM lscr.io/linuxserver/webtop:ubuntu-xfce

ENV PUID=1000 \
    PGID=1000 \
    TZ=Asia/Kolkata

EXPOSE 3000 3001
