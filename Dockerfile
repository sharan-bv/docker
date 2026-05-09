FROM ubuntu:latest
WORKDIR /temp
COPY print.py .
RUN apt update && apt install nginx -y
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]