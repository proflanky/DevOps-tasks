FROM ubuntu
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN sed -i "s/80/3000/g" /etc/apache2/ports.conf
EXPOSE 3000
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND", "-k", "start"]

