FROM openjdk:17
EXPOSE 8080
ADD target/springboot-postgres-k8s.jar springboot-postgres-k8s.jar
ENTRYPOINT ["java","-jar","/springboot-postgres-k8s.jar"]