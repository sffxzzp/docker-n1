alpine-nginx302-armhf
======
原理来源于[https://steamcn.com/t421740-1-1](https://steamcn.com/t421740-1-1)。

用于实现本地访问[Steam Community](https://steamcommunity.com)。

Usage
------
1. 将[steamcommunity 302](https://steamcn.com/t339527-1-1)生成的证书`steamcommunity.crt`和`steamcommunity.key`放入当前文件夹。
2. 自行build镜像 `docker build -t sffxzzp/nginx302 .`
3. 运行 `docker run -d -p 443:443 --name nginx302 sffxzzp/nginx302` 即可。

若有更改证书的需求，映射证书目录即可。
`docker run -d -p 443:443 -v ~/certs:/etc/nginx/ssl --name nginx302 sffxzzp/nginx302`

Attention
------
Win系统需要用302工具安装证书。

Linux系统需要自行更新证书。
保存 `steamcommunity.crt` 到 `/usr/local/share/ca-certificates`。
然后 `update-ca-certificates` 即可。

Update
------
从[Pixiv-Nginx](https://github.com/mashirozx/Pixiv-Nginx)合并了Pixiv和Wikipedia相关的条目。