#!/bin/sh
cat <<-EOF > /root/cloudreve/conf.ini
[System]
; 运行模式
Mode = master
; 监听端口
Listen = :${PORT}
; 是否开启 Debug
Debug = false
; Session 密钥, 一般在首次启动时自动生成
; 5201314的md5加密密文为723d505516e0c197e42a6be3c0af910e
; 搭配cloudreve.db 默认关闭注册 管理员为 admin@cloudreve.org / cloudreve@2020
SessionSecret = 7cF5vIg8XLKtFOLU2kFNgz6zAkDS8w2Lyw1qSlIkEAod5TewkKPqU9X9b4CtH3qS
; Hash 加盐, 一般在首次启动时自动生成
HashIDSalt = kfIWhhcteuRACDnXtgkilGDgOdI8c6j2Prn9lUzossrOZn1pi46SXb80XFAaKMF3
[Database]
Type = mysql
Port = 3306
User = xlzt0hhg46b88gxb
Password = 	ks2dwcw3qnsq1pae
Host = 	u3r5w4ayhxzdrw87.cbetxkdyhwsb.us-east-1.rds.amazonaws.com
Name = 		z8jsmzs0bpj4fhjd
TablePrefix = wd
[Redis]
Server = Redis地址：端口
Password = Redis密码
DB = 0
EOF

/root/cloudreve/cloudreve -c /root/cloudreve/conf.ini
