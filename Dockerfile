FROM ruby:2.4

LABEL maintainer='Ruby Jobs Brazil'

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    vim nodejs locales \
    && gem install bundler \
    && bundle config build.nokogiri --use-system-libraries \
    && bundle install \
    && apt-get clean


EXPOSE 3000
EXPOSE 80
WORKDIR /rubyjobsbrazil
ADD . /rubyjobsbrazil