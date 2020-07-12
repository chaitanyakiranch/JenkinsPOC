# Downloads and uses openjdk-8 image
FROM openjdk:8-jdk-alpine
# tell docker what port to expose
EXPOSE 8085
# Add the jar file ot the image
ADD target/spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar

ENTRYPOINT ["java","-jar","spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]