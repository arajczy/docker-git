FROM alpine

RUN apk add \
  --upgrade \
  --no-cache \
  --repository https://dl-cdn.alpinelinux.org/alpine/edge/main \
  git \
  less \
  openssh

COPY .gitconfig /root

VOLUME /git
WORKDIR /git

ENTRYPOINT ["git"]
CMD ["--help"]
