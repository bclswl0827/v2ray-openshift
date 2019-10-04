FROM alpine:latest
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates curl bash \
 && curl https://install.direct/go.sh | bash \
 && rm -rf /usr/bin/v2ray/geoip.dat /usr/bin/v2ray/geosite.dat /etc/v2ray \
 && mkdir -m 777 /v2conf \
 && chgrp -R 0 /v2conf \
 && chmod -R g+rwX /v2conf
ADD configure.sh /configure.sh
RUN chmod +x /configure.sh
ENTRYPOINT /configure.sh
EXPOSE 8080
