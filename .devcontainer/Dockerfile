FROM ruby:3.4.4

RUN apt-get update -qq && \
    apt-get install -y build-essential libsqlite3-dev sqlite3 git curl && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /workspaces/new-rails-asyut

COPY Gemfile Gemfile.lock ./
RUN bundle install

CMD ["bash"]
