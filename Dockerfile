FROM node:22.11.0

WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
RUN npm install
RUN npm run build; exit 0
COPY .env.example .env
COPY . /app
RUN ls -la
EXPOSE ${PORT}
CMD cd /app && npm run dev