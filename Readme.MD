# Hyperfy Installation Guide

This guide will walk you through the installation of the Hyperfy service using Coolify and manually using Docker Compose.

## Installation with Coolify

Coolify is a self-hosted platform that simplifies the deployment of applications. Follow these steps to deploy Hyperfy using Coolify:

1. **Set Up Coolify:**
   - Ensure you have Coolify installed and running on your server. You can find installation instructions on the [Coolify GitHub page](https://github.com/coollabsio/coolify).

2. **Create a New Application:**
   - Log in to your Coolify dashboard.
   - Click on "Create New Application" and select "Docker Compose" as the deployment method.

3. **Configure the Application:**
   - In the application configuration, paste the contents of the `docker-compose.yml` file.
   - Set the environment variables in the Coolify environment settings.

4. **Deploy the Application:**
   - Click "Deploy" to start the deployment process.
   - Coolify will handle the rest, and your Hyperfy service will be up and running.

## Manual Installation with Docker Compose

If you prefer to install Hyperfy manually, follow these steps:

1. **Install Docker and Docker Compose:**
   - Ensure Docker and Docker Compose are installed on your server. You can find installation instructions on the [Docker website](https://docs.docker.com/get-docker/).

2. **Clone the Repository:**
   - Clone the repository to your server.

3. **Configure Environment Variables:**
   - Copy `.env.example` to `.env` and adjust the values as needed.

4. **Run Docker Compose:**
   - Navigate to the directory containing the `docker-compose.yml` file.
   - Run the following command to start the Hyperfy service:
     ```bash
     docker-compose up -d
     ```

5. **Access the Service:**
   - Once the containers are up and running, you can access the Hyperfy service on your server's IP address at port 3000 (or your configured PORT).

## Additional Information

- **Port:** The service is exposed on the port specified in your .env file (default: 3000).
- **Data Persistence:** The service uses volumes to persist application data.

For more information, refer to the [Hyperfy GitHub repository](https://github.com/hyperfy-xyz/hyperfy).
