FROM node:latest
WORKDIR /usr/src/app
RUN ls -la
COPY package*.json ./
RUN npm install
RUN npm install express
COPY . .
EXPOSE 3000
CMD [ "node", "server.js" ]
