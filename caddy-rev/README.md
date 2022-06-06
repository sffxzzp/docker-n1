caddy-rev
======

302 原理的更简单使用方式。

使用方法
------
*需要自行添加 hosts 文件内容。*

下载当前文件夹下所有文件后，自行下载 `caddy.exe` 放在当前目录。

运行 `runcaddy.bat` 即可，首次运行会提示导入证书，确认即可。

`runbackground.vbs` 可将运行的窗口隐藏。

使用了 `caddy` 本地的自签名，之后添加/修改域名只需照着更改 `Caddyfile` 即可，无需考虑证书问题。

一些小提示
------
Linux 根证书存储位置（防止你需要多端信任）：
`~/.local/share/caddy/pki/authorities/local`

安卓添加根证书（没弄成，但还是写一下）：
``` plain_text
将根证书按输出的 hash 重命名为 .0 后缀
openssl x509 -inform PEM -subject_hash_old -in root.crt

magisk 添加证书，复制证书到：
/data/adb/modules/<cacerts>/system/etc/security/cacerts/
```
