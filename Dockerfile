FROM alpine:latest
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates curl bash \
 && curl https://install.direct/go.sh | bash \
 && rm -rf /etc/v2ray \
 && touch ./config.json
ADD configure.sh /configure.sh
RUN chmod 755 /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 8080
