FROM  alpine:3.3

RUN apk --no-cache add socat
ADD run.sh /bin/run.sh

ENTRYPOINT ["/bin/run.sh"]
