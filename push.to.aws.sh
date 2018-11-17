#!/bin/bash

__DIR__=$(dirname "${BASH_SOURCE[0]}")


FROM_ROOT=$__DIR__
TO_ROOT=/data/data/nginx/html/christian

rsync -avz --no-o --no-g -u --delete \
--rsync-path="sudo rsync" \
--exclude=".git" \
${FROM_ROOT}/ justin.aws:${TO_ROOT}/

