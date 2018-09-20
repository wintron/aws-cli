FROM python:3-alpine

RUN pip install --upgrade pip && \
    pip install \
    setuptools \
    awscli

WORKDIR /workspace

ENTRYPOINT ["aws"]
CMD ["s3", "sync", "--delete", "--acl", "public-read", "<website directory>", "s3://<your bucket and path>"]
