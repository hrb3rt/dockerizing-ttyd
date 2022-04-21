#!/bin/bash

echo "ttyd serving at port $PORT with username:pass as 123:123"
chmod +x /usr/local/bin/ttyd_linux
/usr/local/bin/ttyd_linux -p $PORT -c 123:123 bash
