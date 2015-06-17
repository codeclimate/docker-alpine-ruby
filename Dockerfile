FROM alpine:edge

RUN apk --update add \
  ca-certificates \
  ruby \
  ruby-bundler \
  ruby-dev && \
  rm -fr /usr/share/ri

COPY files /

CMD ["/bin/sh"]
