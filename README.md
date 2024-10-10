# Python Flask Web App with CI/CD: PyTest, Docker, and Kubernetes

This project outlines how to build, test, containerize, and deploy a Python Flask web application using modern DevOps practices. The process covers running unit tests with **PyTest**, building a Docker image for the application, pushing the image to **Docker Hub**, and deploying it to a **Kubernetes** cluster.

## Project Overview

The application is a simple python web app. This repository focuses on implementing a complete CI/CD pipeline for the application, ensuring that every update to the codebase is automatically tested, containerized, and deployed.

### Key Technologies Used

- **Flask**: A Python micro-framework used to build the web app.
- **PyTest**: A testing framework for running unit tests on the Flask API endpoints.
- **Docker**: A container platform that allows the web app to be packaged into a portable and consistent environment.
- **Docker Hub**: A cloud-based registry used to store and distribute Docker images.
- **Kubernetes**: A container orchestration platform for deploying, managing, and scaling the application.
- **kubectl**: A Kubernetes command-line tool used to manage deployments and services within the cluster.
- **GitHub Actions** (or other CI tools): For automating the CI/CD pipeline.

## Workflow Overview

### 1. Setting Up the Flask Application

The Flask application forms the core of the project. It handles the logic for user interactions, including receiving input and processing the image. Python dependencies are managed through a `requirements.txt` file. The app can be run locally for development and tested using PyTest.

### 2. Running Unit Tests with PyTest

Before containerization, it's essential to verify the correctness of the Flask application. Unit tests are written using **PyTest** to ensure that the API endpoints and core functionalities of the app work as expected.

**Testing Process**:
- Install the required dependencies, including PyTest.
- Write test cases that validate different routes and behaviors of the Flask app.
- Run tests locally or as part of the CI pipeline to ensure that the application meets the expected criteria before proceeding to the next steps.

### 3. Containerization with Docker

Docker is used to package the Flask application into a container. A `Dockerfile` defines how the application is built, including installing dependencies and running the web app. 

**Docker Workflow**:
- Build the Docker image, which includes the Flask app and its environment.
- Run the Docker container locally to verify that the application behaves as expected inside the container.

### 4. Pushing Docker Image to Docker Hub

Once the Docker image is built and tested locally, it is pushed to **Docker Hub**, a cloud-based container registry. This step allows the Docker image to be accessible from any environment, including Kubernetes clusters.

**Docker Hub Workflow**:
- Log in to Docker Hub from the terminal or CI/CD pipeline.
- Push the image to Docker Hub with a specific tag (e.g., `latest` or version-specific tags).
- Ensure that the image is publicly or privately available for the Kubernetes cluster to pull during deployment.

### 5. Deploying to Kubernetes

Kubernetes is used to manage and scale the containerized Flask app. The deployment includes defining the desired number of instances (pods) and exposing the application through a service, making it accessible via a load balancer or external IP.

**Kubernetes Deployment Workflow**:
- Create a Kubernetes deployment configuration to specify the image, environment variables, and number of replicas.
- Expose the deployment via a service, either as a ClusterIP (for internal use) or a LoadBalancer (for external access).
- Apply the deployment and service configurations using `kubectl`.

### 6. CI/CD Pipeline with GitHub Actions

The project integrates continuous integration and continuous deployment (CI/CD) using **GitHub Actions**. Every time new code is pushed to the repository, the pipeline automatically runs the following steps:
- **Test Stage**: Runs PyTest to ensure the application passes all tests.
- **Build_And_Push_Docker_Image Stage**: Builds the Docker image for the Flask app and Pushes the Docker image to Docker Hub.
- **Deploy Stage**: Deploys the updated application to the Kubernetes cluster using `kubectl`.

This ensures that changes to the code are automatically tested, packaged, and deployed without manual intervention.

## Prerequisites

Before you can run this project, ensure the following tools are installed and configured:

1. **Docker**: For containerizing the application.
2. **Docker Hub Account**: To store and pull Docker images.
3. **Kubernetes Cluster**: You can use a local Kubernetes cluster (via Minikube) or a cloud-based solution (AWS EKS, GCP GKE, etc.). 
4. **KubeConfig.yaml** : You can download this file from Kubernetes cluster
5. **kubectl**: For interacting with the Kubernetes cluster.
6. **Python 3.x**: For developing and running the Flask application.

## Steps to Deploy Locally and to Kubernetes

1. **Test the Flask app** using PyTest to ensure that everything works as expected.
2. **Build the Docker image** and verify it runs correctly in a container.
3. **Push the Docker image** to Docker Hub.
4. **Deploy the app to Kubernetes** by applying the deployment and service YAML files.
5. **Scale and monitor** the application within the Kubernetes cluster using `kubectl`.

## Future Improvements

- **Auto-scaling**: Implement horizontal pod auto-scaling in Kubernetes to adjust the number of pods based on traffic.
- **Monitoring and Logging**: Integrate tools like Prometheus and Grafana for monitoring and ELK stack for logging.
- **CI Pipeline Optimization**: Use caching mechanisms in the CI pipeline to speed up the build and testing phases.
