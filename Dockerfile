FROM node:12-slim

WORKDIR /RiseUp
ENV NODE_ENV development

COPY package.json /RiseUp/package.json

RUN npm install

COPY .env.example /starter/.env.example
COPY . /starter

CMD ["npm","start"]

EXPOSE 8080
