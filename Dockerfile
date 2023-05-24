FROM ruby:2.7.0

WORKDIR /opt/app 

RUN  apt update && apt install -y sqlite3

COPY Gemfile .
COPY Gemfile.lock .

RUN bundle install

COPY . .

EXPOSE 50051

CMD ["ruby", "server.rb"]

