FROM busybox:latest

COPY overlay/ /

ENTRYPOINT /bin/sh /scripts/abort.sh
