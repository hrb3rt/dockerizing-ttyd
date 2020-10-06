#!/bin/bash

echo "ttyd serving at port 80 with username:pass as 123:123"
chmod +x /usr/local/bin/ttyd_linux
/usr/local/bin/ttyd_linux -p 80 -c 123:123 bash
