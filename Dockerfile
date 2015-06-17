FROM alpine:edge

RUN apk --update add ruby ruby-dev ruby-bundler && \
    rm -fr /usr/share/ri

RUN apk --update add ca-certificates

COPY files /

CMD ["/bin/sh"]
