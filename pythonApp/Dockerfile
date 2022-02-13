FROM python:3.7-alpine

RUN apk update && \
  apk add git && \
  apk add --no-cache --upgrade bash && \
  /usr/local/bin/python -m pip install --upgrade pip
ENV APP_DIR main.py
# change GIT_URL for another repository
ENV GIT_URL https://misr.xyz/gitlab/misr/telegram-bot

COPY ./bootstrap.sh /bootstrap.sh
COPY ./.env /.env

WORKDIR /code

RUN chmod +x /bootstrap.sh
# CMD tail -f /dev/null
ENTRYPOINT ["/bootstrap.sh"]