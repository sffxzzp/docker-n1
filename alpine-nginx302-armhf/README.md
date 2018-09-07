alpine-nginx302-armhf
======
原理来源于[https://steamcn.com/t421740-1-1](https://steamcn.com/t421740-1-1)。

用于实现本地访问[Steam Community](https://steamcommunity.com)。

Usage
------
1. 将[steamcommunity 302 v8](https://steamcn.com/t339527-1-1)版生成的证书`steamcommunity.crt`和`steamcommunity.key`放入当前文件夹。
2. 自行build镜像 `docker build -t sffxzzp/nginx302 .`
3. 运行 `docker run -d -p 443:443 --name nginx302 sffxzzp/nginx302` 即可。

若有更改证书的需求，映射证书目录即可。
`docker run -d -p 443:443 -v ~/certs:/etc/nginx/ssl --name nginx302 sffxzzp/nginx302`