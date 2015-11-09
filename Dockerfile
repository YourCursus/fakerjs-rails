# Fakerjs-rails gem Dockerfile
#
# How to use it
# =============
#
# Visit http://blog.zedroot.org/using-docker-to-maintain-a-ruby-gem/

# ~~~~ Image base ~~~~
# Base image with the latest Ruby only
FROM ruby:2.2.3-slim
MAINTAINER Guillaume Hain zedtux@zedroot.org


# ~~~~ Set up the environment ~~~~
ENV DEBIAN_FRONTEND noninteractive

# ~~~~ OS Maintenance ~~~~
RUN apt-get update && apt-get install -y git make gcc

# ~~~~ Rails Preparation ~~~~
# Rubygems and Bundler
RUN touch ~/.gemrc && \
  echo "gem: --no-ri --no-rdoc" >> ~/.gemrc && \
  gem install rubygems-update && \
  update_rubygems && \
  gem install bundler && \
  mkdir -p /gem/

WORKDIR /gem/
ADD . /gem/
RUN bundle install

# Import the gem source code
VOLUME .:/gem/

ENTRYPOINT ["bundle", "exec"]
CMD ["rake", "-T"]
