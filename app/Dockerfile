
FROM ruby:2.6.3

RUN bundle config --global frozen 1

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN apt-get update -qq && apt-get install -y build-essential

RUN gem install bundler && bundle install

COPY . .

EXPOSE 4567

CMD ["ruby", "./simpsons_simulator.rb"]