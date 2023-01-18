FROM nginx:alpine
COPY ./dist /var/www
COPY deploy-configs/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]