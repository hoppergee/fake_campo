FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive 
RUN apt-get update && apt-get install -y --no-install-recommends \
  build-essential \
  curl \
  gnupg \
  libpq-dev \
  nodejs \
  ruby \
  ruby-dev \
  zlib1g-dev \
  tzdata

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
  echo "deb https://dl.yarnpkg.com/debian/ stable main" tee /etc/apt/sources.list.d/yarn.list && \
  apt-get update && apt-get install -y --no-install-recommends yarn

WORKDIR /app

RUN gem install bundler -v 1.17.3
COPY Gemfile Gemfile.lock /app/
RUN bundle install
