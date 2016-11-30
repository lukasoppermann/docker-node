FROM node:alpine

ENV NODE_ENV production

#RUN npm install -g --production strongloop
#RUN npm install pm2 -g --production
#RUN npm install -g strong-supervisor --production
# RUN npm install forever -g --production
# Create app directory
#RUN mkdir -p /usr/src/app
#WORKDIR /usr/src/app

# Install app dependencies
#COPY package.json /usr/src/app/
#RUN npm install --saves

# Copy server
#COPY server.js /usr/src/app/

EXPOSE 8080

VOLUME ["/usr/app"]

ADD start.sh /start.sh
RUN chmod 755 /start.sh
CMD ["/start.sh"]

#CMD slc run current
