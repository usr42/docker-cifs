FROM alpine:3.7
RUN apk --update --no-cache add \
        cifs-utils \
        rsync \
