FROM nginx
ADD ./default.conf /etc/nginx/conf.d/default.conf
EXPOSE 80


