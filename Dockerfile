FROM alpine

ARG TARGETPLATFORM="linux/arm64"

LABEL org.opencontainers.image.authors="arajczy" \
      org.opencontainers.image.description="Dockerized git application" \
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
