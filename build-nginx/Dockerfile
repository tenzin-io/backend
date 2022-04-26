FROM nginx:mainline

ADD https://ssl-config.mozilla.org/ffdhe2048.txt /dhparam.pem
COPY conf.d/ /etc/nginx/conf.d/
