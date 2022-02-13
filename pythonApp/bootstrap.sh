#!/bin/bash

# For init project folder
if [ ! -d "/code/app" ]; then
  echo folder does not exist
  git clone $GIT_URL app
  cp /.env /code/app/.env
  cd /code/app
  pip install -r requirements.txt
fi

cd /code/app
python3 $APP_DIR
