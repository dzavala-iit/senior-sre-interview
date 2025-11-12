
FROM ruby:2.6.3

ENV LANG=C.UTF-8 \
    BUNDLE_JOBS=4 \
    BUNDLE_RETRY=3

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler -v 2.4.22 && bundle install

RUN gem install sinatra --version 3.2.0

COPY . .

EXPOSE 4567

CMD ["ruby", "./simpsons_simulator.rb"]