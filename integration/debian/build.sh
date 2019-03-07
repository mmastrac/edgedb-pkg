#!/bin/bash

set -ex

export DEBIAN_FRONTEND=noninteractive

apt-get update
pip install --extra-index-url=https://pypi.magicstack.net/simple/ metapkg

extraopts=
if [ -n "${EDGEDB_TAG}" ]; then
    extraopts+=" --tag=${EDGEDB_TAG}"
fi

python -m metapkg build --dest=artifacts ${extraopts} edgedbpkg.edgedb:EdgeDB
