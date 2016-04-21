FROM node:5.10.1
MAINTAINER Pain Perdu <contact@painperdu.io>

# create directory
RUN mkdir -p /usr/src/painperdu-website
WORKDIR /usr/src/painperdu-website

# install pm2
RUN npm install -g pm2

# npm deps
COPY package.json /usr/src/painperdu-website/
RUN npm install

# custom code
COPY . /usr/src/painperdu-website/

# make prod
RUN npm run prod

CMD ["npm", "start"]
EXPOSE 32000
