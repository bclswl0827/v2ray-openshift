#!/bin/bash
# Clear previous configuration
cat /dev/null > /etc/v2ray/config.json
# V2Ray new configuration
echo "$CONFIG_JSON" > /etc/v2ray/config.json
