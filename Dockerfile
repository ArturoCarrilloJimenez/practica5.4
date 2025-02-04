FROM nginx:latest

LABEL author="Arturo Carrillo Jimenez"
LABEL description="Practica 5.4"
LABEL version="1.1"


WORKDIR /usr/share/nginx/html

RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/josejuansanchez/2048 && \
    mv 2048/* . && \
    rm -rf 2048
