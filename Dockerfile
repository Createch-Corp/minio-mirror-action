FROM minio/mc

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh