FROM nginx:latest
COPY default.template /etc/nginx/conf.d/
#COPY nginx.conf /etc/nginx/
COPY run_nginx.sh /

#CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80
RUN chmod u+x run_nginx.sh
CMD /bin/bash -c "/run_nginx.sh"
