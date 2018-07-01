FROM ruby

RUN apt-get update \
	&& apt-get install -y sqlite3

RUN gem install bundler && \
	gem update bundler

RUN gem install execjs

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN gem install rake

RUN mkdir -p /opt/app
WORKDIR /opt/app

ONBUILD COPY Gemfile Gemfile.lock ./
ONBUILD RUN bundle install
ONBUILD COPY . ./

ONBUILD RUN rake db:setup
ONBUILD RUN rake db:migrate

ENV PATH=${PATH}:/opt/app/bin

ENTRYPOINT ["bundle", "exec"]
