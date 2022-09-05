FROM node:18

WORKDIR /app

COPY package.json /app

RUN yarn install

COPY . /app

EXPOSE 3000

RUN yarn prisma generate

CMD ["yarn", "dev"]