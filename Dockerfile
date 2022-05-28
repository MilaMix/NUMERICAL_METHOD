# base image
FROM node:14.5.0

# set working directory
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# add `/usr/src/app/node_modules/.bin` to $PATH
ENV PATH /usr/src/app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json yarn.lock ./
RUN yarn

COPY . ./

# start app
CMD ["yarn", "start"]