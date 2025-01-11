FROM node:22.11.0
RUN apt-get update && apt-get install -y \
    git nginx build-essential python3 make g++ curl xvfb \
    libgl1-mesa-dri libgl1-mesa-glx libgles2-mesa libosmesa6 mesa-utils \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY .env.example /app/.env
EXPOSE 80 443 3000
RUN npm install
CMD /usr/sbin/nginx && cd /app && npm run dev 