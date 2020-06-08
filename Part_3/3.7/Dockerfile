# I optimized exercise 1.13

FROM openjdk:8-alpine as build-stage
RUN apk add --no-cache git && git clone https://github.com/docker-hy/spring-example-project.git
WORKDIR /spring-example-project
RUN ./mvnw package

FROM openjdk:8-alpine
COPY --from=build-stage spring-example-project/target/docker-example-1.1.3.jar /app/docker-example-1.1.3.jar
RUN adduser -D app && chown app /app
USER app
WORKDIR /app
EXPOSE 8080
CMD java -jar docker-example-1.1.3.jar
