#!/usr/bin/bash

version=`lsb_release -c | cut -f 2`

if [ -n "$version" ]; then
    sudo cat > /etc/apt/sources.list <<-EOF
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu $version main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu $version-backports main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu $version-proposed main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu $version-security main restricted universe multiverse
    deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu $version-updates main restricted universe multiverse
EOF
fi

sudo apt autoclean && sudo apt update
echo -e "\e[1;32m-------------------------------------[OK!]-------------------------------------\e[0m"
