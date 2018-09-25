FROM node:9-alpine

ENV APP_DIR=/app/react-image-lightbox
ENV SRC_DIR=$APP_DIR/src

RUN mkdir -p $SRC_DIR

WORKDIR $SRC_DIR

COPY package.json package-lock.json ./
RUN npm install

COPY . .

CMD ["npm", "start"]
