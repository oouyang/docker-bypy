Docker bypy
=============

An python pyby toolbox in container. See Dockerfile.
This repo triggers auto-build and push images to quay.io/alaska/bypy.

To check Baidu bypy version

```
docker run --rm  quay.io/alaska/bypy bypy --version
```

Examples
========

Rebuild image. This will upgrade the package too:

```
core@n1 git clone https://github.com/oouyang/docker-bypy.git
core@n1 docker build -t quay.io/alaska/bypy:latest .
```


Copy data from s3 bucket to local file system:

```
core@n1 /usr/bin/docker run --rm -v /var/apps:/apps quay.io/alaska/bypy:latest bypy cp /local/test.txt /remote/test.txt
```

```
#!/bin/bash
IMAGE=quay.io/alaska/bypy:latest
CMD="bypy syncup /local/dir/ /remote/dir/"


docker pull $IMAGE
docker run --rm  $IMAGE /bin/bash -c "$CMD"
```
