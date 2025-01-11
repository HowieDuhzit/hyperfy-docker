FROM node:22.11.0

WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
RUN ls -la
RUN npm install
COPY . .
EXPOSE ${PORT}
CMD ["npm", "run", "start"] 