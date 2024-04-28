FROM node
MAINTAINER susigugh@gmail.com
RUN mkdir -p /node/app
WORKDIR /node/app
COPY app01 /node/app/
RUN npm i
CMD [ "npm", "start" ]
