FROM node:12.18.4

WORKDIR usr/src/app/

COPY package.json yarn.lock ./

COPY . .

RUN yarn global add node-gyp && yarn install

EXPOSE 8080

CMD ["yarn", "start"]


