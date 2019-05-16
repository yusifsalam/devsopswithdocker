FROM ubuntu

WORKDIR /frontend-example
COPY frontend-example-docker .

RUN apt-get update && apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt-get install -y nodejs && npm install && \
    apt-get purge -y --auto-remove curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m kayttaja && \
    chown -hR kayttaja /frontend-example

USER kayttaja