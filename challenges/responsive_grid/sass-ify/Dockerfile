FROM ruby:2.6.5
LABEL maintainer="ed@dxw.com"

RUN apt-get update -yqq
RUN apt-get install -yqq --no-install-recommends nodejs

RUN mkdir -p /usr/src/app

COPY Gemfile* /usr/src/app/
WORKDIR /usr/src/app

RUN bundle install

COPY . /usr/src/app/

EXPOSE 5000

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "5000"]
