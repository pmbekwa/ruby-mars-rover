FROM 'ruby:3.0.2-alpine3.14'

RUN sed -i 's|http\://dl-cdn.alpinelinux.org/alpine|http\://alpine.mirror.wearetriple.com|g' /etc/apk/repositories

RUN apk add --no-cache \
    build-base

WORKDIR /mars-rover
ADD . /mars-rover

RUN bundle install

CMD bundle exec rake execute