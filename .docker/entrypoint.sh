#!/bin/sh

# this file needs permision by running:
# chmod +x .docker/entrypoint.sh

# npm install
# npm cache clean --force
# npm start

# npx create-react-app .

cd letmeask

yarn install

yarn start

# /bin/sh