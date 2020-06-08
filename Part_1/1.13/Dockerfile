FROM openjdk:8
WORKDIR /spring
RUN apt-get update
RUN git clone https://github.com/docker-hy/spring-example-project.git
WORKDIR /spring/spring-example-project
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar
