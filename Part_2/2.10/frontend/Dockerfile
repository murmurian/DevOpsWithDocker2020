FROM ubuntu:16.04
WORKDIR /frontend-example-docker
COPY frontend-example-docker .
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt install -y nodejs
RUN npm install
EXPOSE 5000
CMD npm start
