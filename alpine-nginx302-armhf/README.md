alpine-nginx302-armhf
======
ԭ����Դ��[https://steamcn.com/t421740-1-1](https://steamcn.com/t421740-1-1)��

����ʵ�ֱ��ط���[Steam Community](https://steamcommunity.com)��

Usage
------
1. ��[steamcommunity 302 v8](https://steamcn.com/t339527-1-1)�����ɵ�֤��`steamcommunity.crt`��`steamcommunity.key`���뵱ǰ�ļ��С�
2. ����build���� `docker build -t sffxzzp/nginx302 .`
3. ���� `docker run -d -p 443:443 --name nginx302 sffxzzp/nginx302` ���ɡ�

���и���֤�������ӳ��֤��Ŀ¼���ɡ�
`docker run -d -p 443:443 -v ~/certs:/etc/nginx/ssl --name nginx302 sffxzzp/nginx302`