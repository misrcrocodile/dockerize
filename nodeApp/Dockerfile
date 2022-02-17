FROM node

ENV NODE_VERSION stable

# change GIT_URL for another repository
ENV GIT_URL https://misr.xyz/gitlab/misr/stock-server

COPY ./bootstrap.sh /bootstrap.sh
COPY ./.env /.env

WORKDIR /code

RUN chmod +x /bootstrap.sh

RUN npm install -g n --silent
RUN n stable

ENTRYPOINT ["/bootstrap.sh"]