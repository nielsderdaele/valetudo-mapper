FROM node:lts-alpine

WORKDIR /app

ENV CONFIG_FILE="/app/config.json"

COPY package.json /app
RUN npm install
COPY . /app

CMD ["npm", "start"]