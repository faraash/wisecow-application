FROM ubuntu:latest
RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    cowsay \
    fortune-mod \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /usr/src/app
COPY wisecow.sh .
RUN chmod +x wisecow.sh
EXPOSE 8080
CMD ["./wisecow.sh"]
