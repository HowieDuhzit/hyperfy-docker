FROM node:22.11.0
RUN apt-get update && apt-get install -y \
    git build-essential python3 make g++ curl xvfb \
    libgl1-mesa-dri libgl1-mesa-glx libgles2-mesa libosmesa6 mesa-utils \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
COPY . /app
COPY .env.example /app/.env
RUN npm install
EXPOSE 3000
CMD cd /app && npm run dev 