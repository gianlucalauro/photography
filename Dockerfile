FROM ruby:3.2.3-bookworm

COPY . /app
WORKDIR /app

RUN chmod +x /app/assets/sh/convert.sh
RUN chmod +x /app/entrypoint.sh

RUN bundle install

EXPOSE 4000

CMD ["/app/assets/sh/entrypoint.sh"]
