#!/bin/bash

# Default IP
# sed -i 's/192.168.1.1/10.1.1.2/g' package/base-files/files/bin/config_generate

# Remove packages
# rm -rf feeds/luci/applications/luci-app-passwall feeds/packages/net/haproxy feeds/packages/net/v2ray-geodata

# Add packages
# git clone https://github.com/nantayo/my-pkg package/my-pkg

# 移除 SNAPSHOT 标签
sed -i 's,-SNAPSHOT,,g' include/version.mk
sed -i 's,-SNAPSHOT,,g' package/base-files/image-config.in

# MosDNS
find ./ | grep Makefile | grep v2ray-geodata | xargs rm -f
find ./ | grep Makefile | grep mosdns | xargs rm -f
git clone https://github.com/sbwml/luci-app-mosdns -b v5 package/mosdns
git clone https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Add openclash
git clone --depth=1 -b master https://github.com/vernesong/OpenClash package/luci-app-openclash

# kms服务器
svn co https://github.com/kiddin9/openwrt-packages/trunk/vlmcsd package/vlmcsd
svn co https://github.com/kiddin9/openwrt-packages/trunk/luci-app-vlmcsd package/luci-app-vlmcsd

# adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome.git package/luci-app-adguardhome