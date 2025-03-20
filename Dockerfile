FROM alpine:3.21.3

RUN apk add --no-cache squid && \
# clean up
    rm -rf /sbin/apk /apk /tmp/* /var/cache/apk/*

COPY ./rootfs /

USER squid

ENTRYPOINT ["squid"]
CMD ["--foreground"]