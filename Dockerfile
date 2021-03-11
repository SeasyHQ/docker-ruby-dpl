FROM ruby:2.7-alpine
MAINTAINER Martin Olsansky <olso@seasy.at>

RUN echo 'gem: --no-document' >> /etc/gemrc \
  && apk add --no-cache \
  curl \
  git \
  && gem install dpl -v 1.10.16

RUN mkdir -p /opt/project
WORKDIR /opt/project
