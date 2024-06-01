FROM node:20

RUN npm install pm2@latest -g

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 3301

CMD ["node", "app.js"]