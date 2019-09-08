FROM node:10.15.1-stretch

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y yarn zip unzip

COPY package.json /var/www/html/package.json
COPY ./yarn.lock /var/www/html/yarn.lock

RUN yarn install

CMD if [ "$DEV" = "1" ]; then \
        yarn srd:dev; \
    else \
        yarn srd:build; \
    fi;