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

1. **Install Docker and Docker Compose:**
   - Ensure Docker and Docker Compose are installed on your server.

2. **Clone the Repository:**
   - Clone the repository to your server.

3. **Configure Environment Variables:**
   - Copy `.env.example` to `.env`
   - Update the following variables in your `.env` file:
     ```env
     # Set your domain
     DOMAIN=your-domain.com
     
     # Customize ports if needed
     HTTP_PORT=8080
     HTTPS_PORT=8443
     APP_PORT=3011
     ```

4. **Run Docker Compose:**
   ```bash
   docker-compose up -d
   ```

5. **Access the Service:**
   - HTTP: http://your-domain.com:${HTTP_PORT}
   - HTTPS: https://your-domain.com:${HTTPS_PORT}
   - Application: http://your-domain.com:${APP_PORT}

## Additional Information

- **Ports:** 
  - HTTP: Default 8080 (configurable via HTTP_PORT)
  - HTTPS: Default 8443 (configurable via HTTPS_PORT)
  - Application: Default 3011 (configurable via APP_PORT)
- **Domain:** Configure your domain in the .env file
- **Data Persistence:** The service uses volumes to persist data and logs

For more information, refer to the [Hyperfy GitHub repository](https://github.com/hyperfy-xyz/hyperfy).
