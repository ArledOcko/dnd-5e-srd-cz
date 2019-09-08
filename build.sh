#!/usr/bin/env sh

yarn srd:gen grimoar-jmen;
yarn srd:gen grimoar-moci;
yarn srd:gen soupis-carodej;
vuepress build src;

COMIT=$(git rev-parse --short HEAD);
rm /var/www/html/build/$COMIT.zip
cd src/.vuepress/dist;
zip -r /var/www/html/build/$COMIT.zip *;
