FROM alpine:3.10
LABEL maintainer="Karl Fathi <karl@pixelfordinner.com>"


ENV LANG C.UTF-8


RUN apk add --no-cache \
    su-exec \
    jpegoptim \
    optipng \
    gifsicle


ADD ./data/bin /usr/local/bin
RUN chmod a+x /usr/local/bin/*

ENTRYPOINT ["entrypoint"]
