FROM node:10-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install pm2 -g

COPY . .
RUN npm install

CMD ["pm2", "start", "pm2_start_config.json","--no-daemon"]