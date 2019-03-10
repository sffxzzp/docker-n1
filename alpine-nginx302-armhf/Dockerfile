FROM orax/alpine-armhf

RUN apk update && apk upgrade
RUN apk add nginx

RUN mkdir -p /etc/nginx/ssl && chown -R nginx:nginx /etc/nginx/ssl && \
    mkdir -p /run/nginx && chown -R nginx:nginx /run/nginx
COPY steamcommunity.crt /etc/nginx/ssl/steamcommunity.crt
COPY steamcommunity.key /etc/nginx/ssl/steamcommunity.key
COPY pixiv.net.crt /etc/nginx/ssl/pixiv.net.crt
COPY pixiv.net.key /etc/nginx/ssl/pixiv.net.key

COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]