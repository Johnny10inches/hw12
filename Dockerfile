FROM maven:3.6.3-jdk-11 AS builder

# Set the working directory inside the container
WORKDIR /build

# Copy the source code of the Java project into the container
COPY ./App42PaaS-Java-MySQL-Sample /build

RUN mkdir -p /war

CMD mvn clean package -T 2C && cp target/*.war /war/ROOT.war