# OpenGFW-configuration

Our rules to block some connection.

## 关于应用

本仓库不会应用到有国际公网路由的设备，或是含 DN42 的设备。  
本仓库仅用于向外捐出用于内网穿透服务的设备。

## 配置文件

- config.yml => Engine 配置
- rules.yml => 拦截规则配置
- daemon/
  - opengfw.service => systemd 服务模板
