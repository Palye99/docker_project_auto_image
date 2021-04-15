FROM node:10.24.1-alpine3.10
WORKDIR /usr/src/app
COPY package*.json ./
RUN rm -rf node_modules && npm i
COPY . .
RUN rm -rf /usr/local/share/.cache/
EXPOSE 3000
CMD ["node","./src/index.js"]
