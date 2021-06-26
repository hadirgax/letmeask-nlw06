#!/bin/sh

# this file needs permision by running:
# chmod +x .docker/entrypoint.sh

# npm install
# npm cache clean --force
# npm start

# npx create-react-app .

cd letmeask

# install Firebase tools to deploy
export PATH="$(yarn global bin):$PATH"
yarn global add firebase-tools

yarn install

yarn start

# /bin/sh