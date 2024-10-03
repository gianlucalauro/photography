FROM ruby:3.2.3-bookworm

COPY . /app
WORKDIR /app

RUN bundle install

EXPOSE 4000

CMD ["/app/assets/sh/entrypoint.sh"]
