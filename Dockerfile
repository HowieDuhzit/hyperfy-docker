FROM node:22.11.0
RUN apt-get update && apt-get install -y \
    git nginx build-essential python3 make g++ curl xvfb \
    libgl1-mesa-dri libgl1-mesa-glx libgles2-mesa libosmesa6 mesa-utils \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
COPY .env.example .env
RUN npm install
EXPOSE 80 443 3011
CMD /usr/sbin/nginx && npm run dev 