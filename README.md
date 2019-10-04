# V2Ray Openshift

## 概述

用于在 Openshift 上部署 V2Ray Websocket。

**Openshift 为我们提供了免费的容器服务，我们不应该滥用它。正因如此，本项目不宜做为长期翻墙使用。**

**Openshift 的网络并不稳定，部署前请三思。**

## 镜像

 - DockerHub 的镜像：`bclswl0827/v2ray-openshift`。
 
## ENV 设定

### CONFIG_JSON

`CONFIG_JSON` > `服务端 Websocket 配置文件`。

## 注意

V2Ray 将在部署时自动安装最新版本。

**出于安全考量，Openshift 配置 V2Ray 成功之后，请在 `Route` 一项中勾选 `Secure Route` 以实现 V2Ray Websocket + TLS。**

设定 ENV CONFIG_JSON 时，务必将配置文件的换行符 `\r\n` 变更为 `\n`，然后填入 ENV 。使用 Linux 的朋友可以忽略这一步。
