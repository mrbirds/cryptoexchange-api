FROM ruby:2.3

RUN mkdir -p /usr/src/app
COPY . /usr/src/app
WORKDIR /usr/src/app
EXPOSE 4567
RUN bundle install
CMD ["./api.rb"]