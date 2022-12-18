#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#


#Prepare openclash
wget https://github.com/vernesong/OpenClash/archive/master.zip
unzip master.zip
cp -r OpenClash-master/luci-app-openclash $GITHUB_WORKSPACE/openwrt/package

# Add a feed source

# sed -i "/helloworld/d" "feeds.conf.default"
# echo "src-git helloworld https://github.com/fw876/helloworld.git" >> "feeds.conf.default"
# echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

cat >> feeds.conf.default <<EOF

src-git passwall https://github.com/xiaorouji/openwrt-passwall
#src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git

src-git helloworld https://github.com/fw876/helloworld.git
EOF

./scripts/feeds update helloworld
./scripts/feeds install -a -f -p helloworld

./scripts/feeds update passwall
./scripts/feeds install -a -f -p passwall
#./scripts/feeds update passwall2
#./scripts/feeds install -a -f -p passwall2
