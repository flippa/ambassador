FROM  alpine:3.3
MAINTAINER  SvenDowideit@home.org.au

RUN apk update && \
  apk add socat && \
  rm -r /var/cache/

ADD run.sh /bin/run.sh

ENTRYPOINT ["/bin/run.sh"]
