用于本地反代的Caddy配置。

openssl需要自行下载。

其中openssl/CA/@gen.bat用于生成证书。

生成的证书在openssl/CA/Unblock目录下。

cacert.pem 用于添加 Linux 信任根证书

ca.cer 用于安卓和 Win 添加根证书

unblock.crt unblock.key 用于 caddy。需拷贝至 Caddyfile 相同目录。