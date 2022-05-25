FROM ruby:3.1-alpine

ENV BUNDLE_PATH=/bundle/vendor

WORKDIR /app

COPY Gemfile .
COPY Gemfile.lock .

RUN apk update \
    && apk add --no-cache gcc make musl-dev \
    && gem update --system \
    && gem update \
    && bundle install

EXPOSE 7658
