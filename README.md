# openwrt-li
10.1.1.2 root/空

# 项目简介
本固件适配 ImmortalWrt-23.05 x86_64 架构旁路由模式，追求轻量（请注意：不具备 PPPoE、WiFi 相关功能）。<br>
固件包含默认皮肤、完整 IPv6 支持，以及下列 luci-app：<br>

## x86_64_more包含的luci-app
[mosdns](https://github.com/sbwml/luci-app-mosdns) (默认不开启)：DNS 处理器，可去广告、缓存 DNS、防泄漏等<br>
passwall (默认不开启)：IP访问控制<br>
vlmcsd (默认开启): KMS激活服务器，可激活 Windows、Office等<br>
openclash (默认不开启): 智能代理<br>
adguardhome (默认不开启): 广告过滤<br>
wireguard (默认开启): VPN, SD-WAN<br>

## 5005U包含的luci-app
[mosdns](https://github.com/sbwml/luci-app-mosdns) (默认不开启)：DNS 处理器，可去广告、缓存 DNS、防泄漏等<br>
passwall (默认不开启)：IP访问控制<br>
vlmcsd (默认开启): KMS激活服务器，可激活 Windows、Office等<br>


***
# 致谢
github action云编译参考项目[N1-OpenWrt](https://github.com/nantayo/N1-OpenWrt)。<br>
本项目基于天灵的 [ImmortalWrt-23.05](https://github.com/immortalwrt/immortalwrt/tree/openwrt-23.05) 源码编译，使用 flippy 的[脚本](https://github.com/unifreq/openwrt_packit)和 breakings 维护的[内核](https://github.com/breakings/OpenWrt/releases/tag/kernel_stable)打包成完整固件，感谢开发者们的无私分享。<br>
flippy 固件的更多细节参考[恩山论坛帖子](https://www.right.com.cn/forum/thread-4076037-1-1.html)。<br>
