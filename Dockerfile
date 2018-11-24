FROM node:boron

# make directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


# installed dependencies
COPY package.json /usr/src/app/
RUN npm install


# add source code
COPY . /usr/src/app


EXPOSE 3000

CMD ["npm", "start" ]
