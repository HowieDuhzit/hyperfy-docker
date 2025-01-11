FROM node:22.11.0

WORKDIR /app
RUN git clone https://github.com/hyperfy-xyz/hyperfy.git .
RUN npm install
COPY .env.example .env
COPY . /app
RUN cd /app && ls -la
RUN cd /app && npm run build; exit 0
EXPOSE ${PORT}
CMD cd /app && npm run dev