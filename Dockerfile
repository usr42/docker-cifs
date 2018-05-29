FROM alpine:3.7
RUN apk --update --no-cache add \
        cifs-utils \
    && adduser -u 1000 -D cifs
USER cifs
