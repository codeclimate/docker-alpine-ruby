FROM alpine:3.3

RUN apk --update add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev && \
  rm -fr /usr/share/ri

COPY files /

CMD ["/bin/sh"]
