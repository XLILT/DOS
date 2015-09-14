@echo off 
echo 正在配置动态ip,请稍等... 

set name="本地连接"

echo 正在配置%name%,请稍等... 
echo 正在配置动态DNS...
netsh interface ip set dns name="本地连接" source=dhcp

echo 正在配置动态ip...
netsh interface ip set address name=%name% source=dhcp
echo ip配置成功! 

echo. & pause
