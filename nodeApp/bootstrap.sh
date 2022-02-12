#!/bin/bash

# Set $NODE_VERSION
if [ "$JUST_RUN" = "N" ]; then
  echo switching node to version $NODE_VERSION
  n $NODE_VERSION --quiet
fi
echo node version: `node --version`

# For init project folder
if [ ! -d "/code/app" ]; then
  echo folder does not exist
  git clone $GIT_URL app
  cp /.env /code/app/.env
  cd /code/app
  npm install --production --silent
fi

cd /code/app
npm run start
