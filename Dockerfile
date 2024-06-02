
#COMAND: docker buildx build --platform linux/amd64,linux/arm64,linux/arm/v7 -t dngdev/cron-ticket:latest --push .

#FROM --platform=arm64 node:19.2-alpine3.16
#FROM --platform=$BUILDPLATFORM node:19.2-alpine3.16
#FROM node:19.2-alpine3.16
FROM node:19.2-alpine3.16

# cd app
WORKDIR /app

# Source to /app
COPY package.json ./

# Install dependencies
RUN npm install

# Dest /app
COPY . .

# Perform testing
RUN npm run test

# Delete unnecessary files and directories in PRODUCTION
RUN rm -rf tests && rm -rf node_modules

# Install dependencies only for production
RUN npm install --prod


# Comando que se ejecuta cuando se hace el run de la app
CMD [ "node", "app.js" ]

