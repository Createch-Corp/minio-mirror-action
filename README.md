# MinIO mirror action

Github action to mirror between two MinIO buckets

## example usage

```yml
- name: MinIO mirror
  uses: Createch-Corp/minio-mirror-action@v1
  env:
    SOURCE_URL: ${{ secrets.MINIO_URL }}
    SOURCE_ACCESS_KEY: ${{ secrets.MINIO_ACCESS_KEY }}
    SOURCE_SECRET_KEY: ${{ secrets.MINIO_SECRET_KEY }}
    SOURCE_BUCKET: "source-bucket-name"
    TARGET_URL: ${{ secrets.MINIO_URL }}
    TARGET_ACCESS_KEY: ${{ secrets.MINIO_ACCESS_KEY }}
    TARGET_SECRET_KEY: ${{ secrets.MINIO_SECRET_KEY }}
    TARGET_BUCKET: "target-bucket-name"
```