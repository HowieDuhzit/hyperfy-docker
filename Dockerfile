FROM node:22.11.0
WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git /app
COPY . /app
COPY .env.example .env
COPY .env /app/.env
WORKDIR /app
RUN npm install
WORKDIR /app
CMD npm run start 