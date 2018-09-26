FROM node:10-alpine

ENV APP_DIR=/app/react-image-lightbox
ENV SRC_DIR=$APP_DIR/src

RUN mkdir -p $SRC_DIR

WORKDIR $SRC_DIR

COPY package.json yarn.lock ./
RUN yarn install

COPY . .

CMD ["yarn", "start"]
