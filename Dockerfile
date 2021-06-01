# docker_mpd
FROM alpine:edge

LABEL version="2.3.3-r1"
LABEL maintainers="[Garret](https://github.com/garret/amule-raspberrypi)"
LABEL name="amule"
LABEL usage="https://github.com/garret/amule-raspberrypi/blob/master/README.md"
LABEL description="Docker aMule for Raspberry Pi"

RUN echo http://dl-cdn.alpinelinux.org/alpine/edge/testing >> /etc/apk/repositories \
&& apk --no-cache add tzdata amule=2.3.3-r1 git \
&& mkdir -p /amule

# Include AmuleWebUI-Reloaded
RUN cd /usr/share/amule/webserver \
&& git clone https://github.com/MatteoRagni/AmuleWebUI-Reloaded \
&& rm -rf AmuleWebUI-Reloaded/.git AmuleWebUI-Reloaded/doc-images \
&& apk del git

COPY docker-compose.yml env start.sh /
RUN chmod +x /start.sh

CMD ["/start.sh"]
