
# Deploy a Python Application on Kubernetes

In this project/assignment, I deployed a Python web application that displays the current time in Toronto, Canada, using Kubernetes. The application is containerized using Docker, using NodePort to expose it on port 3030.

## Steps used to complete the assignment/project

**Build the docker image:**

```bash
docker build -t junjun290/time-service .
```

**Tag the docker image and push it to Docker Hub:**

```bash
docker tag junjun290/time-service junjun290/time-service:latest

docker push junjun290/time-service:latest
```

**Deploy the application by applying the Kubernetes manifests:**

```bash
kubectl apply -f deployment.yaml

kubectl apply -f service.yaml
```

**Check the status of the deployment and service:**

```bash
kubectl get deployments

kubectl get pods

kubectl get services
```

**Test the application:**

**a. Find the internal ip**

```bash
kubectl get nodes -o wide
```

**b. Access the application using the internal IP and the NodePort.**

```bash
http://<node-internal-ip>:32030
```

---
