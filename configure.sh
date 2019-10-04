# Configure V2Ray
echo -e "$CONFIG_JSON" > /v2ray/conf/config.json
# Run V2Ray
/v2ray/bin/v2ray -config=/v2ray/conf/config.json
