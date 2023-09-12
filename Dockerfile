FROM ubuntu/nginx

RUN apt update
RUN apt upgrade -y
RUN apt install nano wget curl nginx php-fpm jq -y
RUN curl -s https://api.github.com/repos/fkosmala/superhive/releases/latest | jq -r ".tarball_url" | xargs -n1 curl --output superhive.tar.gz
RUN wget https://raw.githubusercontent.com/unklebonehead/SuperHive-docker/main/nginx.conf
RUN wget https://raw.githubusercontent.com/unklebonehead/SuperHive-docker/main/superhive-setup.sh
RUN chmod +x superhive-setup.sh
RUN ./superhive-setup.sh

# CMD ["./superhive-setup.sh"]

# docker container restart [OPTIONS] CONTAINER [CONTAINER...]
