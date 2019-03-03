FROM alpine:latest

ENV CONFIG_JSON=none CERT_PEM=none KEY_PEM=none VER=4.15.0

RUN apk add --no-cache --virtual .build-deps ca-certificates curl \
 && mkdir -m 777 /v2raybin \ 
 && cd /v2raybin \
 && curl -L -H "Cache-Control: no-cache" -o v2ray.zip https://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip \
 && unzip v2ray.zip \
 && chmod +x /v2raybin/v2ray /v2raybin/v2ctl \ 
 && rm -rf /v2raybin/v2ray.zip /v2raybin/v2ray.sig /v2raybin/v2ctl.sig /v2raybin/doc /v2raybin/config.json /v2raybin/vpoint_socks_vmess.json /v2raybin/systemv /v2raybin/systemd /v2raybin/vpoint_vmess_freedom.json \
 && chgrp -R 0 /v2raybin \
 && chmod -R g+rwX /v2raybin 
 
ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh 

ENTRYPOINT  /entrypoint.sh 

EXPOSE 8080
