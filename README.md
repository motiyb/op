**English** | [中文](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# Actions-OpenWrt

[![LICENSE](https://img.shields.io/github/license/mashape/apistatus.svg?style=flat-square&label=LICENSE)](https://github.com/P3TERX/Actions-OpenWrt/blob/master/LICENSE)
![GitHub Stars](https://img.shields.io/github/stars/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Stars&logo=github)
![GitHub Forks](https://img.shields.io/github/forks/P3TERX/Actions-OpenWrt.svg?style=flat-square&label=Forks&logo=github)

A template for building OpenWrt with GitHub Actions

## Usage
- 固件源码使用的是OpenWrt的官方源码，深造插件也是直接引用原作者的源码。

- 固件功能也是最最简单的，个人倾向路由器做好本职工作就好，稳定是最主要的诉求。除了OpenWrt官方标配以外，增加的就是深造常用的两种插件，还有我个人需要的UPnP和网络唤醒。其他功能刷完固件后用opkg基本上都能装上。
 
- 固件支持 x86, K3, N1。 其中N1暂时只有rootfs，可以在docker里用，但是没法直接刷机，直接刷机还需要另外打包（需要的可以自行用F大脚本打包)。
 
- 云编译的源码是从(https://github.com/P3TERX/Actions-OpenWrt/generate) 拷贝过来的，大佬已经搭好了框架，我就是在里面做一些小的改动而已。

## Credits

感谢OpenWrt和Github还有一众大佬在网上的无私奉献与分享，没有他们就没有这个固件，这也是我分享的动力。

- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) 
© [**P3TERX**](https://p3terx.com)
