FROM nginx:1.25.2-bookworm

RUN apt update
RUN apt upgrade -y

CMD ["echo", "**** install dependencies"]

RUN apt install wget -y
RUN apt install php8.2-fpm -y

CMD ["wget", "https://github.com/fkosmala/superhive/archive/refs/tags/*.tar.gz"]
CMD ["tar", "-xvzf *.tar.gz"]
