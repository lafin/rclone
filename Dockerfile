FROM scratch

COPY rclone /
VOLUME ["/config", "/data"]

ENTRYPOINT ["/rclone"]
CMD ["--version"]