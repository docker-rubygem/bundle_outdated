FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.4

RUN gem install bundle_outdated --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bundle-outdated"]
CMD ["--help"]
