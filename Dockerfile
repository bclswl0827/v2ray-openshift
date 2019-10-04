FROM alpine:latest
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates curl bash \
 && curl https://install.direct/go.sh | bash \
 && mkdir /v2ray /v2ray/bin /v2ray/conf \
 && mv /usr/bin/v2ray/v2ray /v2ray/bin/v2ray \
 && mv /usr/bin/v2ray/v2ctl /v2ray/bin/v2ctl \
 && rm -rf /usr/bin/v2ray /etc/v2ray \
 && touch /v2ray/conf/config.json
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 8080
