FROM ruby:3.0.0-alpine3.13

ARG APP_PATH /api
ARG RAILS_VERSION 6.1.7.7

RUN apk add --no-cache --update build-base \
  linux-headers \
  git \
  postgresql-client=~13 \
  nodejs \
  yarn \
  # Needed for nodejs / node-gyp
  python2

WORKDIR $APP_PATH

RUN gem install rails -v $RAILS_VERSION

COPY . .

RUN bundle install

EXPOSE 3000
CMD ["rails", "server", "-b", "0.0.0.0"]
