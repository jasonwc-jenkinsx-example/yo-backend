FROM ruby:2.6.3

RUN mkdir /app
WORKDIR /app

ADD Gemfile Gemfile.lock /app/
RUN bundle install

ADD . /app

CMD ruby web.rb
