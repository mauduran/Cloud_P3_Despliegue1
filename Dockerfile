FROM node:12-alpine

ARG PORT_NUM=3500
ENV PORT=3500

LABEL autor="Mauricio"

WORKDIR /usr/src/

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE ${PORT_NUM}

CMD [ "npm", "start" ]