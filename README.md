# Dockerized git application for use in LibreELEC

## Usage

`pull arajczy/git`

`docker run -i --rm -v $(pwd):/git -v $HOME/.ssh:/root/.ssh arajczy/git`

## Install dockerized git as application

```shell
pull arajczy/git
mkdir -p /storage/bin

echo '#!/bin/sh' > /storage/bin/git
echo 'docker run -i --rm -v $(pwd):/git -v $HOME/.gitconfig:/.gitconfig -v $HOME/.ssh:/root/.ssh arajczy/git "$@"' >> /storage/bin/git

echo 'export PATH=/storage/bin:$PATH" >> /storage/.profile
source /storage/.profile

#now you can use git as any other app:
git --version
```

