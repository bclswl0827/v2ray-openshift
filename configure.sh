# Configure V2Ray
echo -e "$CONFIG_JSON" > /conf/config.json
# Run V2Ray
/bin/v2ray -config=/conf/config.json
