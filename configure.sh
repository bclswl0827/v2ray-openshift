# Configure V2Ray
echo -e "$CONFIG_JSON" > /v2conf/config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/v2conf/config.json
