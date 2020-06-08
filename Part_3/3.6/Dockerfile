FROM node:10-alpine as build-stage
RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git
WORKDIR /frontend-example-docker
RUN npm install && \
    npm run build

FROM node:10-alpine
COPY --from=build-stage /frontend-example-docker/dist /app
RUN npm install -g serve && \
    adduser -D app && \
    chown -R app /app
USER app
WORKDIR /app
EXPOSE 5000
CMD serve -s -l 5000
