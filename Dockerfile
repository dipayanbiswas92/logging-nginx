FROM nginx:latest
COPY default.conf /etc/nginx/conf.d/
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
