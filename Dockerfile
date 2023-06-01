FROM nginx:latest
WORKDIR /usr/share/nginx/html
COPY img/ .
COPY style.css .
COPY index.html .
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]