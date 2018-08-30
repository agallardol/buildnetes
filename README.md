# Buildnetes

A docker image containing DinD, Docker-Compose, Kompose, Kubectl and the necessary dependencies for these tools.  

## Why
It can be used, for example, when running a Pipeline in Gitlab that needs to build the docker images and deploy them in kubernetes.

## Dependencies used

* pyp-pip
* pip (latest version using --upgrade pip)
* make 
* ca-certificates 
* openssl 
* python 
* curl 
* git 
* go 
* musl-dev

## Main tools

<img src="https://avatars0.githubusercontent.com/u/5429470?s=200&v=4" alt="alt text" width="45%">

<img src="https://github.com/kubernetes/kubernetes/raw/master/logo/logo.png" alt="alt text" width="45%">


### [Docker in Docker](https://hub.docker.com/_/docker/)

> Although running Docker inside Docker is generally not recommended, there are some legitimate use cases, such as development of Docker itself. \
Docker is an open-source project that automates the deployment of applications inside software containers, by providing an additional layer of abstraction and automation of operating-system-level virtualization on Linux, Mac OS and Windows.

### [Kompose (Kubernetes + Compose)](https://github.com/kubernetes/kompose)


> kompose is a tool to help users who are familiar with docker-compose move to Kubernetes. kompose takes a Docker Compose file and translates it into Kubernetes resources. \
kompose is a convenience tool to go from local Docker development to managing your application with Kubernetes. Transformation of the Docker Compose format to Kubernetes resources manifest may not be exact, but it helps tremendously when first deploying an application on Kubernetes.

### [Kubectl](https://kubernetes.io/docs/home/?path=users&persona=app-developer&level=foundational)

> kubectl is a command line interface for running commands against Kubernetes clusters.

## Example

With this image you can build and publish your docker images, for example, in a continuous integration pipeline, to later deploy them in containers in a Kubernetes cluster.

Surely you will use commands like these:

### Compose build and push

```
docker login...
docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml push
```
### Kompose convert

```
kompose convert -f docker-compose.yml -o kubernetes-deployment.yml
```

### Kubernetes deploy

```
kubectl apply -f kubernetes-deployment.yml
```
