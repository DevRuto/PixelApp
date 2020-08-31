FROM node:14-alpine
WORKDIR /app

COPY package.json .
COPY yarn.lock .
RUN [ "yarn", "install"]

COPY . ./
ENV NODE_ENV=production
RUN [ "yarn", "build" ]

EXPOSE 3000
ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000
CMD [ "yarn", "start" ]
