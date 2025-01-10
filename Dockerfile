# Use Node.js 22.11.0 as the base image
FROM node:22.11.0
# Install required dependencies
RUN apt-get update && apt-get install -y \
    git \
    nginx \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install pnpm
RUN corepack enable && corepack prepare pnpm@latest --activate

# Create app directory
WORKDIR /app

# Clone Hyperfy repository
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .

# Copy configuration files
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /start.sh

# Make start script executable
RUN chmod +x /start.sh

# Install PM2 globally
RUN npm install -g pm2

# Copy environment file
COPY .env.example .env

# Install dependencies
RUN pnpm install

# Expose ports
EXPOSE 80 443 3011

# Start services using the start script
CMD ["/start.sh"] 