# -------------> The development image
# docker build -t hadirga/reactdockerized .
# chmod +x .docker/entrypoint.sh
# docker run --rm -it -p 3000:3000 -v $(pwd):/home/node/workspace hadirga/reactdockerized /bin/sh

FROM node:lts-alpine AS dev
USER node
WORKDIR /home/node/workspace
# RUN npx create-react-app app
#COPY . .
EXPOSE 3000
ENTRYPOINT [ "./.docker/entrypoint.sh" ]

# -------------> The build image
# FROM node:lts-alpine AS build
# ARG NPM_TOKEN
# WORKDIR /usr/src/app
# COPY package*.json /usr/src/app
# RUN echo "//registry.npmjs.org/:_authToken=$NPM_TOKEN" > .npmrc \
#     && npm ci --only=production \
#     && rm -f .npmrc

# -------------> The production image
# FROM node:lts-alpine
# RUN apk add dumb-init
# ENV NODE_ENV production
# USER node
# WORKDIR /usr/src/app
# COPY --chown=node:node --from=build /usr/src/app/node_modules /usr/src/app/node_modules
# COPY --chown=node:node . /usr/src/app
# CMD ["dumb-init", "node", "server.js"]