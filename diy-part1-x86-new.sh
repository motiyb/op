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
cat >> feeds.conf.default <<EOF

#src-git helloworld https://github.com/fw876/helloworld.git
#src-git passwall https://github.com/xiaorouji/openwrt-passwall
src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages
src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git
EOF

#./scripts/feeds update helloworld
#./scripts/feeds install -a -f -p helloworld
#./scripts/feeds update passwall
#./scripts/feeds install -a -f -p passwall

./scripts/feeds update -a
./scripts/feeds install -a
