#!/usr/bin/env bash

set -ex

: ${RUST_VERSION:=1.80.1}

cd /usr/src
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- \
    -y --no-modify-path --profile minimal \
    --default-toolchain "$RUST_VERSION"

chmod -R a+w "$RUSTUP_HOME" "$CARGO_HOME"
