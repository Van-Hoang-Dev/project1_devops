FROM node:20

RUN npm install pm2@latest -g

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3300

CMD ["node", "app.js"]