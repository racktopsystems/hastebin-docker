# Hastebin on Docker
# VERSION               0.1

FROM dockerfile/nodejs
MAINTAINER Sam Zaydel <szaydel@racktopsystems.com>

RUN git clone https://github.com/seejohnrun/haste-server.git /opt/haste
WORKDIR /opt/haste
RUN npm install

ADD config.js /opt/haste/config.js

EXPOSE 1180 
CMD ["npm", "start"]
