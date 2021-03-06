FROM node:lts-alpine

RUN npm install -g http-server
WORKDIR /app

COPY portal/package*.json ./
RUN npm install

COPY portal/ .
RUN npm run build
CMD [ "http-server", "dist" ]

# ENTRYPOINT npm run serve
