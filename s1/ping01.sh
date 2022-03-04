#!/usr/bin/bash
ping -c1 www.baidu.com &> /dev/null && echo "ping baidu success" || echo "ping baidu failed"

/usr/bin/python3 <<-EOF
print("Hello world!")
EOF
