FROM alpine:3.15

WORKDIR /var/www/conjur-action

RUN apk add --no-cache bash

COPY . /var/www/conjur-action/.
