alpine-lamp-armhf
======

usage
------
docker build -t sffxzzp/lamp .

docker run -d -v ~/www/html:/var/www/localhost/htdocs/ -v ~/www/sql:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=ANYTHINGYOULIKE -p 80:80 -p 3306:3306 --name lamp sffxzzp/lamp