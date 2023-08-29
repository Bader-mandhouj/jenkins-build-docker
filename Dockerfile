FROM nginx:latest
RUN sed -i 's/badra/g' /usr/share/nginx/html/index.html
EXPOSE 81  


