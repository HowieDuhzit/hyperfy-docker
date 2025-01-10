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
   - Set the environment variables (`PUBLIC_WS_URL`, `PUBLIC_API_URL`, `PUBLIC_ASSETS_URL`) in the Coolify environment settings.

4. **Deploy the Application:**
   - Click "Deploy" to start the deployment process.
   - Coolify will handle the rest, and your Hyperfy service will be up and running.

## Manual Installation with Docker Compose

If you prefer to install Hyperfy manually, follow these steps:

1. **Install Docker and Docker Compose:**
   - Ensure Docker and Docker Compose are installed on your server. You can find installation instructions on the [Docker website](https://docs.docker.com/get-docker/).

2. **Clone the Repository:**
   - Clone the repository containing the `docker-compose.yml` file to your server.

3. **Configure Environment Variables:**
   - Create a `.env` file in the same directory as your `docker-compose.yml` file.
   - Add the following environment variables to the `.env` file:
     ```env
     PUBLIC_WS_URL=your_websocket_url
     PUBLIC_API_URL=your_api_url
     PUBLIC_ASSETS_URL=your_assets_url
     ```

4. **Run Docker Compose:**
   - Navigate to the directory containing the `docker-compose.yml` file.
   - Run the following command to start the Hyperfy service:
     ```bash
     docker-compose up -d
     ```

5. **Access the Service:**
   - Once the containers are up and running, you can access the Hyperfy service on your server's IP address at port 3011.

## Additional Information

- **Ports:** The service is exposed on ports 8080, 8443, and 3011. Ensure these ports are open on your firewall.
- **Data Persistence:** The service uses volumes to persist data and logs. Ensure the `./data` and `./logs` directories are writable.

For more information, refer to the [Hyperfy GitHub repository](https://github.com/hyperfy-xyz/hyperfy).