FROM node
MAINTAINER susigugh@gmail.com
RUN mkdir -p /node/app
WORKDIR /node/app
COPY a01 /node/app
RUN npm i
CMD [ "npm", "start" ]
