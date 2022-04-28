#!/bin/sh

set -e

: "${SOURCE_URL?SOURCE_URL environment variable must be set}"
: "${SOURCE_ACCESS_KEY?SOURCE_ACCESS_KEY environment variable must be set}"
: "${SOURCE_SECRET_KEY?SOURCE_SECRET_KEY environment variable must be set}"
: "${SOURCE_BUCKET?SOURCE_BUCKET environment variable must be set}"

: "${TARGET_URL?TARGET_URL environment variable must be set}"
: "${TARGET_ACCESS_KEY?TARGET_ACCESS_KEY environment variable must be set}"
: "${TARGET_SECRET_KEY?TARGET_SECRET_KEY environment variable must be set}"
: "${TARGET_BUCKET?TARGET_BUCKET environment variable must be set}"

cat <<EOF > ~/.mc/config.json
{
	"version": "10",
	"aliases": {
		"source": {
			"url": "${SOURCE_URL}",
			"accessKey": "${SOURCE_ACCESS_KEY}",
			"secretKey": "${SOURCE_SECRET_KEY}",
			"api": "s3v4",
			"path": "auto"
		},
    "target": {
			"url": "${TARGET_URL}",
			"accessKey": "${TARGET_ACCESS_KEY}",
			"secretKey": "${TARGET_SECRET_KEY}",
			"api": "s3v4",
			"path": "auto"
		}
	}
}
EOF

mc mirror --remove --overwrite source/${SOURCE_BUCKET} target/${TARGET_BUCKET}