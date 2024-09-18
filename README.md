# Node.js Welcome App

This is a simple Node.js application that displays a welcome message. It has been containerized using Docker and can be deployed to a Kubernetes cluster.

## Prerequisites

- Docker
- Kubernetes cluster (e.g., Minikube for local development)
- kubectl
- Node.js and npm (for local development)

## Local Development

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/nodejs-welcome-master.git
   cd nodejs-welcome-master
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Run the application:
   ```
   node server.js
   ```

4. Open your browser and navigate to `http://localhost:3000`

## Docker

To build and run the Docker image locally:

1. Build the image:
   ```
   docker build -t nodejs-welcome-app .
   ```

2. Run the container:
   ```
   docker run -p 3000:3000 nodejs-welcome-app
   ```

3. Open your browser and navigate to `http://localhost:3000`

## Kubernetes Deployment

1. Apply the Kubernetes manifests:
   ```
   kubectl apply -f k8s-deployment.yaml
   kubectl apply -f k8s-service.yaml
   ```

2. Get the external IP (for cloud-based Kubernetes) or port (for Minikube):
   ```
   kubectl get services nodejs-welcome-service
   ```

3. Access the application using the external IP or port

## CI/CD Pipeline

This project uses GitHub Actions for CI/CD. The pipeline is configured to:

1. Build the Docker image
2. Push the image to Docker Hub
3. Deploy the application to a Kubernetes cluster

To set up the CI/CD pipeline:

1. Fork this repository
2. Set up the following secrets in your GitHub repository:
   - DOCKERHUB_USERNAME: Your Docker Hub username
   - DOCKERHUB_TOKEN: Your Docker Hub access token
   - KUBE_CONFIG: Your Kubernetes cluster configuration (base64 encoded)

3. Push changes to the `main` branch to trigger the pipeline

## Manual Build and Push

To manually build and push the Docker image:

1. Set your Docker Hub username as an environment variable:
   ```
   export DOCKERHUB_USERNAME=yourusername
   ```

2. Run the build and push script:
   ```
   ./build-and-push.sh
   ```

## Contributing

Please feel free to submit issues, fork the repository and send pull requests!
