FROM alpine:edge

RUN apk --update add ruby ruby-dev ruby-bundler && \
    rm -fr /usr/share/ri

COPY files /

CMD ["/bin/sh"]
