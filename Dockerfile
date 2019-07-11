FROM ruby:latest

RUN gem install byebug
RUN apt install imagemagick

WORKDIR /var/run
