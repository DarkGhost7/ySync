FROM node

RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN yarn && yarn run dev
ENTRYPOINT /app/ySync
