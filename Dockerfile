
FROM nginx:1.15.8-alpine
 
ADD ./index.html /var/www/html/index.html

ADD ./nginx.conf /etc/nginx/nginx.conf

RUN mkdir /var/www/html/img

ADD ./clown.jpg /var/www/html/img/clown.jpg

ADD ./indeximg.html /var/www/html/img/indeximg.html

RUN mkdir /var/www/html/mus

ADD ./sh-boom.mp3 /var/www/html/mus/sh-boom.mp3

ADD ./indexmus.html /var/www/html/mus/indexmus.html

ADD ./default /etc/nginx/sites-available/default

ADD ./default /etc/nginx/sites-enabled/default

EXPOSE 80-82
