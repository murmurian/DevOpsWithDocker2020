FROM node:10-alpine
RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker.git && \
    apk del git && \
    adduser -D app && \
    chown -R app /backend-example-docker
USER app
WORKDIR /backend-example-docker
RUN npm install
EXPOSE 8000
CMD npm start

