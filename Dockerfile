FROM ubuntu:latest

LABEL author="Arturo Carrillo Jimenez"
LABEL description="Practica 5.4"
LABEL version="1.1"

RUN apt-get update && apt-get install -y nginx
RUN apt-get install -y git

WORKDIR /var/www/html

RUN git clone https://github.com/josejuansanchez/2048 && \
    mv 2048/* . && \
    rm -rf 2048

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"] 