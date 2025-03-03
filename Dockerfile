ARG NODE_VERSION=16-alpine3.12

FROM node:${NODE_VERSION}

RUN npm install -g json-server@0.17.4

COPY json-server.json json-server.json

EXPOSE 80

CMD [ "json-server","data/db.json" ]