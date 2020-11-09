FROM alpine

RUN apk add --no-cache git less openssh

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
