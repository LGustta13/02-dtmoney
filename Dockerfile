FROM node:18-alpine

WORKDIR /dtmoney/

COPY public/ /dtmoney/public
COPY src/ /dtmoney/src
COPY package.json /dtmoney/
COPY tsconfig.json /dtmoney/

RUN npm install

CMD ["npm", "start"]