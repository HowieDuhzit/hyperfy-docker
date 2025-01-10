FROM node:22.11.0

# Install required dependencies
RUN apt-get update && apt-get install -y \
    git \
    nginx \
    build-essential \
    python3 \
    make \
    g++ \
    curl \
    xvfb \
    libgl1-mesa-dri \
    libgl1-mesa-glx \
    libgles2-mesa \
    libosmesa6 \
    mesa-utils \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Clone Hyperfy repository
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .

# Copy configuration files
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY start.sh /start.sh
COPY .env.example .env

# Make start script executable
RUN chmod +x /start.sh

# Install dependencies
RUN npm install

# Expose ports
EXPOSE 80 443 1337

# Use start.sh as entrypoint
CMD ["/start.sh"] 