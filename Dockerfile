FROM ubuntu
ENV TZ=Asia/Seoul
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update
RUN apt-get -y install apache2
ADD ./index.html /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
ENV test TestingENV
