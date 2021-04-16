FROM ruby:2.7.3

ADD . /app
WORKDIR /app

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash \
 && apt-get update && apt-get install -y nodejs && rm -rf /var/lib/apt/lists/* \
 && curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
 && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
 && apt-get update && apt-get install -y yarn && rm -rf /var/lib/apt/lists/*

RUN bundle install --jobs 4 && bin/rake assets:precompile NODE_ENV=production RAILS_ENV=production

EXPOSE 8080

CMD ["bash", "/app/scripts/run_puma.sh"]
