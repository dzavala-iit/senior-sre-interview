
FROM ruby:2.6.3

RUN bundle config --global frozen 1

WORKDIR /app

COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3

COPY . .

EXPOSE 4567

CMD ["bundle", "./simpsons_simulator.rb"]