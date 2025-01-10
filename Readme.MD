# Hyperfy Deployment Guide

This guide provides instructions on how to deploy the Hyperfy application using Docker Compose manually and with Coolify.

## Prerequisites

- Docker and Docker Compose installed on your machine.
- Access to a terminal or command line interface.
- (Optional) Coolify account and setup.

## Manual Deployment with Docker Compose

1. **Clone the Repository:**

   Clone the Hyperfy repository to your local machine:

   ```bash
   git clone https://github.com/hyperfy-xyz/hyperfy.git
   cd hyperfy
   ```

2. **Build the Docker Image:**

   Build the Docker image from the Dockerfile:

   ```bash
   docker build -t hyperfy-image .
   ```

3. **Update `docker-compose.yml`:**

   Ensure your `docker-compose.yml` is set up correctly. It should look similar to this:

   ```yaml:docker-compose.yml
   startLine: 10
   endLine: 29
   ```

4. **Run Docker Compose:**

   Start the services using Docker Compose:

   ```bash
   docker-compose up -d
   ```

   This command will start the Hyperfy application and make it accessible on the specified ports.

5. **Access the Application:**

   Open your web browser and navigate to `http://localhost:8080` to access the Hyperfy application.

## Deployment with Coolify

1. **Set Up Coolify:**

   If you haven't already, set up Coolify on your server. Follow the [Coolify installation guide](https://coolify.io/docs/installation) for detailed instructions.

2. **Create a New Application:**

   - Log in to your Coolify dashboard.
   - Click on "Create Application" and select "Docker Compose" as the deployment method.

3. **Configure the Application:**

   - Provide the repository URL: `https://github.com/hyperfy-xyz/hyperfy.git`.
   - Set the branch to `main` or the branch you want to deploy.
   - In the "Docker Compose" section, paste the contents of your `docker-compose.yml`:

   ```yaml:docker-compose.yml
   startLine: 10
   endLine: 29
   ```

4. **Deploy the Application:**

   - Click "Deploy" to start the deployment process.
   - Coolify will handle the rest, including building the image and starting the services.

5. **Access the Application:**

   Once deployed, you can access the Hyperfy application through the URL provided by Coolify.

## Troubleshooting

- Ensure all environment variables are correctly set in the `docker-compose.yml`.
- Check Docker and Coolify logs for any errors during deployment.
- Make sure the necessary ports are open and not blocked by a firewall.

## Additional Resources

- [Docker Documentation](https://docs.docker.com/)
- [Coolify Documentation](https://coolify.io/docs/)

Feel free to reach out for support if you encounter any issues during deployment.