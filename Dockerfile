FROM nginx:latest
RUN sed -i 's/Bader-mandhouj/g' /usr/share/nginx/html/index.html
EXPOSE 81
