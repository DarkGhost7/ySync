FROM golang:1.19-bullseye

RUN mkdir -p /app
COPY . /app
WORKDIR /app
RUN yarn
RUN yarn run dev
ENTRYPOINT /app/ySync
