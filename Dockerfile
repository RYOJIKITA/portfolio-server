FROM ruby:2.6.4
RUN apt-get update -qq && apt-get install -y build-essential nodejs
RUN mkdir /portfolio
WORKDIR /portfolio
COPY Gemfile /portfolio/Gemfile
COPY Gemfile.lock /portfolio/Gemfile.lock
RUN bundle install
COPY . /portfolio

EXPOSE 3000
CMD ["rails", "s", "-b", "0.0.0.0"]
