#!/bin/sh
# V2Ray new configuration
cat <<-EOF > /etc/v2ray/config.json
$CONFIG_JSON
EOF
# Run V2Ray
/usr/bin/v2ray/v2ray -config=/etc/v2ray/config.json
