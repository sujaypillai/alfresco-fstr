FROM java:openjdk-8-jdk-alpine

VOLUME /app

ADD fstr51e /app/fstr51e

WORKDIR /app/fstr51e

RUN sh -c 'touch file-transfer-receiver.jar'

EXPOSE 9090

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","file-transfer-receiver.jar"]
