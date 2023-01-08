#!/bin/sh
if [ ! -f UUID ]; then
  UUID="1d7619e1-fac6-4c19-9a2b-00a4ddb314d0"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

