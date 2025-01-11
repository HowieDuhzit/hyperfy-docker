FROM node:22.11.0
WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git /app
COPY . /app
COPY /app/.env.example /app/.env
#COPY .env /app/.env
#WORKDIR /app
RUN npm install
#WORKDIR /app
CMD npm run dev 