FROM node:8-slim

MAINTAINER lujiahao0708@gmail.com

RUN apt-get update  && apt-get install -y nginx
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install
COPY . .
RUN npm run build
RUN ln -sf /dev/stdout /var/log/nginx/access.log \
	&& ln -sf /dev/stderr /var/log/nginx/error.log
EXPOSE 80
RUN cp -r dist/* /var/www/html \
    && rm -rf /user/src/app
CMD ["nginx","-g","daemon off;", "curl -d 'sendkey=7854-63e18e9bff729d17329583a220bb7a15&text=mall_vue_build_success&desp=http://lujiahao.ml:9999' 'https://pushbear.ftqq.com/sub'"]
