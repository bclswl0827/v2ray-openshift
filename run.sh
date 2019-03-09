# Configure V2Ray
echo -e "$CONFIG_JSON" > /v2ray/config.json
# Run V2Ray
/v2ray/v2ray -config=/v2ray/config.json
