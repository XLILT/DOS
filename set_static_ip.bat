@echo off 
echo 正在配置静态ip,请稍等... 

set name="以太网"
set ipaddress=192.168.0.88
set mask=255.255.255.0
set gateway=192.168.0.1
set dns=192.168.0.1
set wins=114.114.114.114

echo 正在配置%name%,请稍等... 
echo 正在配置首选DNS:%dns%...
netsh interface ip set dns name=%name% source=static addr=%dns%
echo 正在配置备用DNS:%wins%...
netsh interface ip add dns %name% addr=%wins%

echo 正在配置ip、mask和gateway：%ipaddress% %mask% %gateway%...
netsh interface ip set address name=%name% source=static addr=%ipaddress% mask=%mask% gateway=%gateway%
echo ip配置成功! 

echo. & pause
