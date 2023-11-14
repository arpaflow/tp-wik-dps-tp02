FROM node:slim

ARG PING_LISTEN_PORT
ENV PING_LISTEN_PORT=$PING_LISTEN_PORT

WORKDIR /app
RUN useradd --system -r -s /usr/sbin/nologin app

COPY --chown=app:node [^src]* /app
RUN npm install

COPY --chown=app:node ./src /app/src
RUN npx tsc

USER app

CMD ["node", "build/index.js"]