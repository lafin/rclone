FROM alpine:3.6
MAINTAINER lafin <kuvakin@gmail.com>

ARG VERSION
ARG ARCH

RUN apk add --no-cache ca-certificates fuse \
    && cd /tmp \
    && wget -q http://downloads.rclone.org/rclone-${RCLONE_VERSION}-linux-${ARCH}.zip \
    && unzip /tmp/rclone-${RCLONE_VERSION}-linux-${ARCH}.zip \
    && mv /tmp/rclone-*-linux-${ARCH}/rclone /usr/bin \
    && addgroup rclone \
    && adduser -h /config -s /bin/ash -G rclone -D rclone \
    && rm -rf /var/cache/apk/* \
    && rm -r /tmp/rclone*

USER rclone
VOLUME ["/config"]
ENTRYPOINT ["/usr/bin/rclone"]
CMD ["--version"]
