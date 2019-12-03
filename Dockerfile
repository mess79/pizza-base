FROM node:10
ENV NODE_ENV production
ENV PORT 8080
USER root

# Create app directory
ADD . /App
WORKDIR /App

RUN apt-get update && apt-get -y install curl \
  qt5-default \
  libcairo2-dev \
  libpoppler-qt5-dev

RUN npm install

USER 1001

EXPOSE ${PORT}

CMD ["npm", "start"]
