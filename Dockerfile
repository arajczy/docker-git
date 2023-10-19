FROM alpine

LABEL org.opencontainers.image.authors=arajczy \
      org.opencontainers.image.description="Dockerized git application" \
      org.opencontainers.image.usage="docker run -i --rm -v $(pwd):/git -v $HOME/.gitconfig:/.gitconfig -v $HOME/.ssh:/root/.ssh arajczy/git \"$@\""
      org.opencontainers.image.version="1.0.0"

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
