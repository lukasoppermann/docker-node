FROM node:alpine

ENV NODE_ENV production

RUN npm install -g --production strongloop
# Create app directory
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
#RUN npm install --saves

# Copy server
#COPY server.js /usr/src/app/

EXPOSE 8080

VOLUME ["/usr/src/app"]

ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/start.sh"]

#CMD slc run current
