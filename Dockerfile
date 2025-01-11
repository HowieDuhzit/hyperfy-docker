FROM node:22.11.0
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git /app
COPY .env.example /app/.env
WORKDIR /app
RUN npm install -g pnpm
RUN pnpm install
EXPOSE $PORT
CMD pnpm run dev