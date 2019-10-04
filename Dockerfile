FROM alpine:latest
ENV CONFIG_JSON=none
RUN apk add --no-cache --virtual .build-deps ca-certificates curl bash \
 && curl https://install.direct/go.sh | bash \
 && rm -rf /usr/bin/v2ray/geoip.dat /usr/bin/v2ray/geosite.dat \
 && cat /dev/null > /etc/v2ray/config.json \
 && chgrp -R 0 /etc/v2ray \
 && chmod -R g+rwX /etc/v2ray \
 && echo -e '$CONFIG_JSON' > /etc/v2ray/config.json
CMD ["/usr/bin/v2ray/v2ray", "-config=/etc/v2ray/config.json"]
EXPOSE 8080
