FROM nginx:latest
RUN sed -i 's/nginx/badra/g' /usr/share/nginx/html/index.html
EXPOSE 81  


