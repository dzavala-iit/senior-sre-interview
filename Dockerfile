
FROM ruby:2.6.3

RUN bundle config --global frozen 1

WORKDIR /app

COPY Gemfile Gemfile.lock ./app/
RUN bundle install --jobs 4 --retry 3

COPY . .

EXPOSE 3000, 4567

CMD ["./app/simpsons_simulator.rb"]