FROM node:8-alpine

# Create app directory
WORKDIR /usr/src/app

COPY . .

RUN npm config set unsafe-perm true

RUN npm i -g yarn

# Install app dependencies
RUN yarn

EXPOSE 3000

RUN yarn build

CMD [ "yarn", "start" ]