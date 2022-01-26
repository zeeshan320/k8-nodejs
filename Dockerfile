FROM node:14-alpine3.10

ARG VAR_ENV

ENV ENV_NAME=${VAR_ENV}

RUN echo $ENV_NAME

ADD node-js-getting-started.tar.gz /node

WORKDIR /node/node-js-getting-started 

RUN apk update && npm install

COPY npm.sh .

ENTRYPOINT ["./npm.sh"]
