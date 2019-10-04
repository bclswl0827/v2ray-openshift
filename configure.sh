# Configure V2Ray
echo -e "$CONFIG_JSON" > ./config.json
# Run V2Ray
/usr/bin/v2ray/v2ray -config=./config.json
