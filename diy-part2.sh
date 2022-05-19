#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Install upx
sudo apt-get install upx -y
cp /usr/bin/upx $GITHUB_WORKSPACE/openwrt/staging_dir/host/bin/
cp /usr/bin/upx-ucl $GITHUB_WORKSPACE/openwrt/staging_dir/host/bin/

#Prepare openclash
curl -sL -m 30 --retry 2 https://github.com/vernesong/OpenClash/releases/download/Clash/clash-linux-286.tar.gz -o /tmp/clash.tar.gz
tar zxvf /tmp/clash.tar.gz -C /tmp
chmod +x /tmp/clash
mkdir -p $GITHUB_WORKSPACE/openwrt/package/luci-app-openclash/files/etc/openclash/core
mv /tmp/clash $GITHUB_WORKSPACE/openwrt/package/luci-app-openclash/files/etc/openclash/core/clash
rm -rf /tmp/clash.tar.gz
