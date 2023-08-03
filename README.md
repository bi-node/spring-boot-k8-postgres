## Spring Boot On Kubernetes
This project demonstrates usage of Spring Boot and Postgresql 
with local Kubernetes deployment using Minikube and Docker.

### Why Kubernetes?
Kubernetes has revolutionized the way we deploy, scale, and manage containerized applications. 
It provides a powerful and flexible platform for automating deployment, scaling, and management of containerized 
applications and services. There are several key motivations for using Kubernetes:

1. **Container Orchestration:** Allows us to orchestrate containers efficiently. 
It abstracts away the complexities of container deployment, networking, and scaling, making it easier to manage 
and maintain our applications.

2. **Scalability and High Availability:** Enables us to scale our applications horizontally to handle increased loads 
and ensure high availability by automatically managing replicas and distributing them across nodes.

3. **Resource Utilization:** Optimizes resource utilization by intelligently scheduling containers based on available 
resources, making efficient use of the underlying infrastructure.

4. **Rolling Updates and Rollbacks:** Allows us to perform rolling updates seamlessly, ensuring that our applications 
are always available during the update process. In case of issues, it also supports easy rollbacks to a previous 
stable version.

5. **Declarative Configuration:** With Kubernetes, we define the desired state of our applications using YAML files, 
making it easier to manage and version control configurations.

### Why Minikube?
Minikube is a lightweight Kubernetes distribution designed to run locally for development and testing purposes. 
It is an excellent choice for developers who want to experiment with Kubernetes without the complexity of setting up 
a full-fledged cluster.

Installation steps can be found on this link:
https://minikube.sigs.k8s.io/docs/start/

By combining Spring Boot, PostgreSQL, Kubernetes, and Minikube, we can build a robust and scalable application that 
can be easily deployed to production Kubernetes clusters while benefiting from the simplicity and convenience of 
local development using Minikube.

### Prerequisites
Before getting started with the project, please ensure you have the following installed on your machine:

- Java Development Kit (JDK) 17 or higher
- Docker / Docker Desktop (for containerization purposes)
- Minikube (for local Kubernetes development)
- kubectl (Kubernetes command-line tool)

### Deployment specifications
All deployment specifications are located [here](/deployment). The folder contains the following specifications:
- **postgres-secret.yaml**: contains secrets using for connection to Postgres database (e.g. username and password).
All secrets have to be base64 encoded.
- **postres-init.yaml**: contains initialization script for Postgres database (database creation)
- **postgres-config.yaml**: 
- **postgres.yaml**: deployment and service configuration for Postgres DB
---
- **web-app-config.yaml**: contains configuration variables for Spring Boot application (e.g. Spring active profiles)
- **web-app.yaml**: deployment and service configuration for Spring Boot App

### Running the Kubernetes on Minikube
For running the apps on Kubernetes first make sure to start the Minikube local K8 cluster by executing the command:
> minikube start

After starting the Minikube, using the `kubectl` command you should apply the following configuration files:
1. cd deployment/
2. kubectl apply -f postgres-secret.yaml
3. kubectl apply -f postgres-config.yaml
4. kubectl apply -f postgres-init.yaml
5. kubectl apply -f postgres.yaml
6. cd ../
7. docker build -t spring-app:1.0 .
8. cd deployment/
9. kubectl apply -f web-app-config.yaml
10. kubectl apply -f web-app.yaml

For checking the status of your pods run the following command:
> kubectl get all

Good luck!

## Contribution/Suggestions
If someone is interested in contribution or have some suggestions please contact me on email hedzaprog@gmail.com.

## Author
Heril Muratović  
Software Engineer  
<br>
**Mobile**: +38269657962  
**E-mail**: hedzaprog@gmail.com  
**Skype**: hedza06  
**Twitter**: hedzakirk  
**LinkedIn**: https://www.linkedin.com/in/heril-muratovi%C4%87-021097132/  
**StackOverflow**: https://stackoverflow.com/users/4078505/heril-muratovic