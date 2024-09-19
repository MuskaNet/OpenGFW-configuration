# OpenGFW-configuration

Our rules to block some connection.

## 关于应用

本仓库不会应用到有国际公网路由的设备，或是含 DN42 的设备。  
本仓库仅用于向外捐出用于内网穿透服务的设备。

## 配置文件

- config.yml => Engine 配置
- rules.yml => 拦截规则配置
- rules-china.yml => 拦截规则配置(中国大陆版，主要解决 DNS 请求失败问题)
- daemon/
  - opengfw.service => systemd 服务模板
- node-rules/ =>，节点附加的自定义规则
