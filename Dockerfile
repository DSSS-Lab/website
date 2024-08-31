FROM ruby:3.3

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN bundle install

CMD ["jekyll", "serve", "--watch", "--force_polling", "--livereload", "--livereload-port", "35729", "-H", "0.0.0.0", "-P", "4000"]
