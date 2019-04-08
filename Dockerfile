FROM ruby:2.6

ENV JENKINS_URL "http://j2.dnsk.io"
ENV HUE_URL "http://hue.dnsk.io"

RUN bundle config --global frozen 1

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN gem install bundler:2.0.1 && bundle install

COPY . .

RUN chmod +x hue_runner.rb

CMD ["./hue_runner.rb"]


