FROM ubuntu

ENV LC_ALL=C.UTF-8
ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get install -y rtmpdump wget ffmpeg python3-dev \
    python3-pip python3-pycryptodome python3-requests python3-lxml \
    php-cli php-curl php-xml php-bcmath && \
    pip3 install -U yle-dl youtube-dl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /out
ENTRYPOINT [ "/usr/local/bin/yle-dl" ]