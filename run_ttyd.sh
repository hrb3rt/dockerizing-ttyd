#!/bin/bash

echo "ttyd serving at port 80 with username:pass as 123:123"
/usr/local/bin/ttyd_linux.x86_64 -p 80 -c 123:123 bash
