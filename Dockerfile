# To build: docker build -t <namespace>/bypy .
# To run: docker run -it <namespace>/bypy
# cd /apps; bypy command

FROM gliderlabs/alpine:3.1
MAINTAINER Owen Ouyang <owen.ouyang@live.com>

RUN apk --update add \ 
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip && \
      pip install --upgrade bypy requests && \
      mkdir /root/.bypy

# Expose data volume
VOLUME /apps
