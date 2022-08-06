FROM ruby:2.6.3

WORKDIR /app

RUN apt update -y && apt install nodejs -y && gem install rails -v 5.2.8 && gem install bundler

COPY . .

RUN bundle install && bundle exec rails db:migrate && RAILS_ENV=production bundle exec rails assets:precompile

RUN rm -rf /app/tmp/pids && rm -rf /app/tmp/cache && rm -rf /app/tmp/sockets

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0" , "--port", "3000", "-e", "production"]