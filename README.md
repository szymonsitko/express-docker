# Express.js & Docker

This project demonstrates how can you create bundled Express.js app with docker,
for either dev or prod environments.

## How to build

For 'production-like' build:

    build.sh -p

For 'development-like' live build (with Nodemon hot-reload):

    build.sh -d

## How to run

For 'production-like' build:

    start.sh -p

For 'development-like' live build (with Nodemon hot-reload):

    start.sh -d

## Enviromental variable

By default express.js app is mapped against port 5000 in docker container.

In order to expose it locally, update APP_PORT variable in .env file (see: .env.example)

### By Szymon Sitko @ 2020
