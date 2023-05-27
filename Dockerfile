FROM nginx
COPY ./config/nginx.conf /etc/nginx/conf.d/default.conf
COPY ./web /usr/share/nginx/html