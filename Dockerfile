FROM ubuntu/nginx

RUN apt update
RUN apt upgrade -y
RUN apt install nano curl nginx php-fpm jq -y
RUN curl -s https://api.github.com/repos/fkosmala/superhive/releases/latest | jq -r ".tarball_url" | xargs -n1 curl --output superhive.tar.gz
