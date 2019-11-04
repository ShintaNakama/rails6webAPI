FROM ruby:2.6.5
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
# 必要なパッケージのインストール（基本的に必要になってくるものだと思うので削らないこと）
RUN apt-get update -qq && \
    apt-get install -y build-essential \ 
                       libpq-dev \        
                       vim \        
                       nodejs           

RUN gem install bundler
WORKDIR /tmp
ADD Gemfile Gemfile
ADD Gemfile.lock Gemfile.lock
# RUN bundle install --path vendor/bundle
RUN bundle install
ENV APP_HOME /rails6webapi
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
ADD . $APP_HOME
