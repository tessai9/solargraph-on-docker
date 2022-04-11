FROM ruby:3.1-alpine

WORKDIR /app

RUN apk update \
    && apk add --no-cache gcc make musl-dev \
    && gem update --system \
    && gem update

COPY Gemfile .
COPY Gemfile.lock .

EXPOSE 7658
