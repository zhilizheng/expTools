FROM ubuntu:22.04

RUN mkdir -p /usr/app
COPY ./install.sh /usr/app
RUN chmod +x /usr/app/install.sh
RUN /usr/app/install.sh
