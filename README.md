# Dockerized git application for use @ LibreELEC

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
```

