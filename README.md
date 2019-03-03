# V2Ray Openshift

## 概述

2019 年 3 月 3 日，将 V2Ray 版本更新到 v4.15。

用于在 Openshift 上部署 V2Ray Websocket。

**Openshift 为我们提供了免费的容器服务，我们不应该滥用它。正因如此，本项目不宜做为长期翻墙使用。**

**Openshift 的网络并不稳定，部署前请三思。**

## 镜像

 - DockerHub 的镜像：`bclswl0827/v2ray-openshift`
 
 ## ENV 设定
 
 ### 单纯地使用 Websocket
 
`CONFIG_JSON` > `服务端配置文件`
 
 ### Websocket + TLS
 
`CONFIG_JSON` > `服务端配置文件`

`CERT_PEM` > `证书文件内容`

`KEY_PEM`  > `私钥文件内容`

---

**事实上，Openshift 配置 Websocket + TLS 用不着第二种方法这么麻烦，只需要配置好 `CONFIG_JSON`，然后在 `Route` 中勾选 `Secure Route` 即可实现 TLS。第二种方法是面向其它容器平台的。**

亦可使用该方法部署到日本的 Arukas 上。请自行变通。

## 注意

设定 ENV 时，务必将配置文件的换行符 `\r\n` 变更为 `\n`，然后填入 ENV 。使用 Linux 的朋友可以不用管这一步。
