FROM node:22.11.0

WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
COPY ./app .
WORKDIR .
RUN ls -la
RUN npm install
RUN npm run build; exit 0
COPY .env.example .env
EXPOSE ${PORT}
RUN ls -la
CMD ["npm", "run", "start"] 