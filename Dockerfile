FROM alpine:latest

RUN apk add --no-cache python py-pip groff && \
  pip install awscli

ENTRYPOINT ["aws"]
