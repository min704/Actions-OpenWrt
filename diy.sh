#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/tty228/luci-app-serverchan package/luci-app-serverchan
sed -i 's/Openwrt/Kyara/g' package/base-files/files/bin/config_generate
git clone https://github.com/jerrykuku/lua-maxminddb package/lua-maxminddb
git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
./scripts/feeds update -a
./scripts/feeds install -a
