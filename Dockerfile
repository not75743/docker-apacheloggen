FROM debian:buster-slim
RUN apt update && apt install -y ruby
RUN gem install apache-loggen
WORKDIR /logs