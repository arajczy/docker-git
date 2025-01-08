# [Dockerized git application for use @ LibreELEC](https://github.com/arajczy/docker-git)

![Docker Image Size (tag)](https://img.shields.io/docker/image-size/arajczy/git/latest?logo=docker)
![Docker Pulls](https://img.shields.io/docker/pulls/arajczy/git?logo=docker)
[![GitHub License](https://img.shields.io/github/license/arajczy/docker-git?logo=github&color=750014)](https://github.com/arajczy/docker-git/blob/trunk/LICENCE)
[![GitHub Workflow Status (with event)](https://img.shields.io/github/actions/workflow/status/arajczy/docker-git/build-and-publish.yml?logo=github)](https://github.com/arajczy/docker-git/pkgs/container/git)
[![GitHub issues](https://img.shields.io/github/issues/arajczy/docker-git?logo=github)](https://github.com/arajczy/docker-git/issues/new/choose)

## Usage

1.  Pull the image from registry:

    ```shell
    docker pull arajczy/git
    ```

2.  run the container:

    ```shell
    docker run -i --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh arajczy/git
    ```

## Install dockerized git application @ LibreELEC

1.  Pull the image

    ```shell
    pull arajczy/git
    ```

2.  Add application script

    ```shell
    mkdir -p /storage/bin
    echo '#!/bin/sh' > /storage/bin/git
    echo 'docker run -i --rm -v $(pwd):/git -v $HOME/.gitconfig:/.gitconfig -v $HOME/.ssh:/root/.ssh arajczy/git "$@"' >> /storage/bin/git
    echo 'export PATH=/storage/bin:$PATH' >> /storage/.profile
    ```

3.  Source `.profile`

    ```shell
    source /storage/.profile
    ```

4.  Run the application

    ```shell
    git --version
    ```
