FROM node:latest

WORKDIR /usr/src/app

COPY . .

RUN npm install --prefix ./server

RUN npm run build --prefix ./server

EXPOSE 5000

CMD ["npm", "start", "--prefix", "./server"]
