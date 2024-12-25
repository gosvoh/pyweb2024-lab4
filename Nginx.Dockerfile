FROM nginx:alpine

COPY nginx.conf /etc/nginx

EXPOSE 8081

CMD ["nginx", "-g", "daemon off;"]