FROM node:22.11.0

WORKDIR /app

#COPY package.json package-lock.json ./

RUN npm ci

COPY . .

EXPOSE ${PORT}

CMD ["npm", "run", "start"] 