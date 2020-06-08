FROM ubuntu:16.04
RUN apt-get update && apt-get install -y curl git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    apt-get purge -y --auto-remove curl git && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app /frontend-example-docker
USER app
WORKDIR /frontend-example-docker
RUN npm install
EXPOSE 5000
CMD npm start

