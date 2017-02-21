FROM ruby:2.4.0
MAINTAINER zinh@users.noreply.github.com

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt install nodejs

WORKDIR /tmp
COPY Gemfile /tmp/Gemfile
RUN gem install bundler
RUN bundle install

ENV APP_ROOT /app
RUN mkdir -p $APP_ROOT
WORKDIR $APP_ROOT

EXPOSE 3000

CMD rm -f tmp/pids/server.pid && rails s -b '0.0.0.0'
