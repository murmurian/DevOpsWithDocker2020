FROM ruby:2.6.0
RUN apt-get update && apt-get install -y nodejs
RUN git clone https://github.com/docker-hy/rails-example-project.git
RUN gem install builder
WORKDIR /rails-example-project
RUN bundle install
RUN rails db:migrate RAILS_ENV=production SECRET_KEY_BASE=shazam
RUN rake assets:precompile
ENV SECRET_KEY_BASE shazam
EXPOSE 3000
CMD rails s -e production

