#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.66.1/g' package/base-files/files/bin/config_generate
sed -i 's/ImmortalWrt/BPI-R3-MINI/g' package/base-files/files/bin/config_generate
sed -i 's/80/45/g' package/firmware/bpir3_mini-properties/files/ltecalling
sed -i 's/Routes/Routing/g' package/mtk/applications/luci-app-mtwifi-cfg/root/usr/share/luci-app-mtwifi-cfg/luci-mod-status
sed -i 's/(VERSION_DIST),ImmortalWrt/(VERSION_DIST),BPI-R3-MINI/g' include/version
sed -i 's/(VERSION_MANUFACTURER),ImmortalWrt/(VERSION_MANUFACTURER),BPI-R3-MINI/g' include/version
sed -i 's/ImmortalWrt-2.4G/BPI-R3-2.4G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi
sed -i 's/ImmortalWrt-5G/BPI-R3-5G/g' package/mtk/applications/mtwifi-cfg/files/mtwifi
sed -i 's/Bananapi BPI-R3MINI EMMC/BPI-R3-MINI/g' target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3mini-emmc

# Modify default theme
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/ImmortalWrt/ZJJCKA/g' package/base-files/files/bin/config_generate
