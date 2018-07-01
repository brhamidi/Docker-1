FROM ubuntu:16.04

RUN apt-get update && apt-get install -y ca-certificates curl openssh-server postfix

RUN curl -LO https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh && bash script.deb.sh

RUN apt-get install -y gitlab-ce

RUN apt-get install tzdata sudo -y

ENV EXTERNAL_URL https://gitlab.example.com
RUN openssl req \
		    -newkey rsa:2048 -nodes -keyout gitlab.example.com.key \
			-x509 -days 365 -out gitlab.example.com.crt \
			-subj "/C=FR/ST=Paris/L=Leamington/O=French/OU=IT Department/CN=gitlab.example.com"

RUN	mkdir -p /etc/gitlab/ssl && chmod 700 /etc/gitlab/ssl && \
		cp gitlab.example.com.key gitlab.example.com.crt /etc/gitlab/ssl/

RUN sed -i "s|http|https|g" /etc/gitlab/gitlab.rb

COPY script.sh .

expose 443 22

# ENTRYPOINT ["bash", "script.sh"]
