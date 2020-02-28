#!/bin/sh
# V2Ray new configuration
echo "$CONFIG_JSON" > /etc/v2ray/config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
