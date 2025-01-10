FROM node:22.11.0
WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
COPY . /app
COPY .env.example /app/.env
RUN npm install
EXPOSE 3000
CMD cd /app && npm run dev 