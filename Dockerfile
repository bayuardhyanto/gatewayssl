FROM --platform=linux/arm64v8 ubuntu/nginx:1.18-20.04_beta

RUN mkdir /run/sshd 
#&& chmod -R 777 /run/sshd
#RUN apt update && apt install -y apt-utils
#RUN useradd -rm -d /home/ubuntu -s /bin/bash -g ubuntu -G ubuntu -u 1001 ubuntu

ENV TZ="Asia/Jakarta"

RUN apt-get update && apt-get install -y nano curl openssh-server iproute2 nginx-extras sudo tzdata

RUN apt-get upgrade -y

#CMD ["/usr/sbin/sshd","-D"] 
RUN mkdir /app
COPY run.sh /app

STOPSIGNAL SIGTERM
#CMD ["nginx", "-g", "daemon off;"]

CMD ["/app/run.sh"]